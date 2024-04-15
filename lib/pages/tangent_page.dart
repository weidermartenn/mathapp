import 'package:flutter/material.dart';
import '/scripts/lu_methods.dart';

class TangentPage extends StatefulWidget {
  const TangentPage({super.key});

  @override
  State<TangentPage> createState() => _TangentPageState();
}

class _TangentPageState extends State<TangentPage> {
  final TextEditingController _a = TextEditingController();
  final TextEditingController _b = TextEditingController();
  final TextEditingController _c = TextEditingController();
  final TextEditingController _e = TextEditingController();
  final TextEditingController _x0 = TextEditingController();
  final TextEditingController _x1 = TextEditingController();
  String result = '';

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
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
          )
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.only(left: 10),
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
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
          title: const Text('МЕТОД КАСАТЕЛЬНЫХ'),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('f(x) = '),
                       SizedBox(
                        width: 70,
                        height: 50,
                        child: TextFormField(
                          controller: _a,
                          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                          decoration: const InputDecoration(
                              hintText: 'x^3',
                            ),
                          ),
                       ),
                       
                       SizedBox(
                        width: 70,
                        height: 50,
                        child: TextFormField(
                          controller: _b,
                          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                          decoration: const InputDecoration(
                              hintText: 'x^1',
                              
                            ),
                          ),
                       ),
                       SizedBox(
                        width: 70,
                        height: 50,
                        child: TextFormField(
                          controller: _c,
                          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
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
                              const Text('[ ', style: TextStyle(fontSize: 35)),
                              SizedBox(
                                width: 60,
                                height: 50,
                                child: TextFormField(
                                  controller: _x0,
                                  keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                  decoration: const InputDecoration(
                                      hintText: 'a',
                                    ),
                                  ),
                              ),
                              const Text(' ; ', style: TextStyle(fontSize: 35)),
                              SizedBox(
                                width: 60,
                                height: 50,
                                child: TextFormField(
                                  controller: _x1,
                                  keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                  decoration: const InputDecoration(
                                      hintText: 'b',
                                    ),
                                  ),
                              ),
                              const Text(' ]', style: TextStyle(fontSize: 35)),
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
                                width: 70,
                                height: 50,
                                child: TextFormField(
                                  controller: _e,
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SizedBox( 
                      width: 220,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            double a = double.tryParse(_a.text) ?? 0;
                            double b = double.tryParse(_b.text) ?? 0;
                            double c = double.tryParse(_c.text) ?? 0;
                            double x0 = double.tryParse(_x0.text) ?? 0;
                            double x1 = double.tryParse(_x1.text) ?? 0;
                            double e = double.tryParse(_e.text) ?? 0;
                            List<double> coefs = [a, b, c];
                            result = tangent(x0, x1, e, coefs);
                          });
                        },
                        child: const Text(
                          'РАССЧИТАТЬ',
                          style: TextStyle(
                            fontSize: 20,
                          )
                        ),
                      ),
                    )
                  )
                ]
              ),
              Column(
                children: [
                  const Text('РЕЗУЛЬТАТ'),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 280,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 223, 223, 223),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text( 
                          result,
                          style: const TextStyle(fontWeight: FontWeight.normal),
                        )
                      ),
                    ),
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