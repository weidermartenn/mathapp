import 'package:flutter/material.dart';

class HordPage extends StatefulWidget {
  const HordPage({super.key});

  @override
  State<HordPage> createState() => _HordPageState();
}

class _HordPageState extends State<HordPage> {

  double a = 0;
  double b = 0;
  double c = 0;
  int intervalA = 0;
  int intervalB = 0;
  double accuracy = 0;
  
  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 231, 231, 231),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.only(left: 10),
            hintStyle: TextStyle(
              fontSize: 14,
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 172, 247, 143)),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            elevation: MaterialStateProperty.all(5),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          )
        ),

      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('МЕТОД ХОРД'),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            }
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0), 
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column (
                children: [
                  const Text('ВВЕДИТЕ ПАРАМЕТРЫ'),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('f(x) = '),
                       SizedBox(
                        width: 60,
                        height: 30,
                        child: TextFormField(
                          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
                          decoration: const InputDecoration(
                              hintText: 'x^3',
                            ),
                          ),
                       ),
                       
                       SizedBox(
                        width: 60,
                        height: 30,
                        child: TextFormField(
                          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
                          decoration: const InputDecoration(
                              hintText: 'x^1',
                              
                            ),
                          ),
                       ),
                       SizedBox(
                        width: 60,
                        height: 30,
                        child: TextFormField(
                          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
                          decoration: const InputDecoration(
                              hintText: 'x^0',
                              
                            ),
                          ),
                       ),
                    ],
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        const Text('ИНТЕРВАЛ ИЗОЛЯЦИИ'),
                        Padding( 
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('[ '),
                              SizedBox(
                                width: 40,
                                height: 30,
                                child: TextFormField(
                                  keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
                                  decoration: const InputDecoration(
                                      hintText: 'a',
                                    ),
                                  ),
                              ),
                              const Text(' ; '),
                              SizedBox(
                                width: 40,
                                height: 30,
                                child: TextFormField(
                                  keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
                                  decoration: const InputDecoration(
                                      hintText: 'b',
                                    ),
                                  ),
                              ),
                              const Text(' ]'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      children: [
                        const Text('ЗАДАННАЯ ТОЧНОСТЬ'),
                        Padding( 
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('E = '),
                              SizedBox(
                                width: 60,
                                height: 30,
                                child: TextFormField(
                                  keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
                                  decoration: const InputDecoration(
                                      hintText: '0.001',
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: null,
                      child: Text('РАССЧИТАТЬ'),
                    ),
                  )
                ]
              ),
              Column(
                children: [
                  const Text('РЕЗУЛЬТАТ'),
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 260,
                    width: 350,
                    color: const Color.fromARGB(255, 210, 229, 245),
                  ),
                ]
              )
            ]
          ),
          )
        )
      )
    );
  }
}