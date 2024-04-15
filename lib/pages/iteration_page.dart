import 'package:flutter/material.dart';
import '/scripts/lu_methods.dart';

class IterationPage extends StatefulWidget {
  const IterationPage({super.key});

  @override
  State<IterationPage> createState() => _IterationPageState();
}

class _IterationPageState extends State<IterationPage> {
  final TextEditingController _x11 = TextEditingController();
  final TextEditingController _x12 = TextEditingController();
  final TextEditingController _x13 = TextEditingController();
  final TextEditingController _x21 = TextEditingController();
  final TextEditingController _x22 = TextEditingController();
  final TextEditingController _x23 = TextEditingController();
  final TextEditingController _x31 = TextEditingController();
  final TextEditingController _x32 = TextEditingController();
  final TextEditingController _x33 = TextEditingController();

  final TextEditingController _b1 = TextEditingController();
  final TextEditingController _b2 = TextEditingController();
  final TextEditingController _b3 = TextEditingController();

  final TextEditingController _x10 = TextEditingController();
  final TextEditingController _x20 = TextEditingController();
  final TextEditingController _x30 = TextEditingController();

  final TextEditingController _e = TextEditingController();

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
          title: const Text('МЕТОД ИТЕРАЦИЙ'),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            }
          ),
        ),
        body: SingleChildScrollView( 
          scrollDirection: Axis.vertical,
          child: Center(
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
                    padding: const EdgeInsets.only(top: 10, right: 20, bottom: 20),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox( 
                        width: 350,
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('{', style: TextStyle(fontSize: 100, fontWeight: FontWeight.w100),),
                            Column( 
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x11,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₁',
                                          ),
                                        ),
                                    ),                                   
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x12,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₂',                                            
                                          ),
                                        ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x13,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₃',
                                          ),
                                        ),
                                    ),
                                    const Text(' = '),
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _b1,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'b₁',
                                          ),
                                        ),
                                    ),
                                  ]
                                ),
                                Row( 
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x21,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₁',
                                          ),
                                        ),
                                    ),                                    
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x22,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₂',
                                            
                                          ),
                                        ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x23,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₃',
                                          ),
                                        ),
                                    ),
                                    const Text(' = '),
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _b2,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'b₂',
                                          ),
                                        ),
                                    ),
                                  ]
                                ),
                                Row( 
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x31,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₁',
                                          ),
                                        ),
                                    ),
                                    
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x32,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₂',
                                            
                                          ),
                                        ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _x33,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'x₃',
                                          ),
                                        ),
                                    ),
                                    const Text(' = '),
                                    SizedBox(
                                      width: 70,
                                      height: 50,
                                      child: TextFormField(
                                        controller: _b3,
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                                        decoration: const InputDecoration(
                                            hintText: 'b₃',
                                          ),
                                        ),
                                    ),
                                  ]
                                ),
                              ]
                            )
                          ]
                        )
                      )
                    ],
                  ),
                  ),
                  const Text('ПЕРВОЕ ПРИБЛИЖЕНИЕ'),
                  Padding( 
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 
                        const Text('{', style: TextStyle(fontSize: 100, fontWeight: FontWeight.w100),),
                        Column( 
                          children: [
                            SizedBox(
                              width: 70,
                              height: 50,
                              child: TextFormField(
                              controller: _x10,          
                              keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                              decoration: const InputDecoration(
                                  hintText: 'x₁⁽°⁾',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 50,
                              child: TextFormField(
                              controller: _x20,          
                              keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                              decoration: const InputDecoration(
                                  hintText: 'x₂⁽°⁾',
                                ),
                              ),
                            ),  
                            SizedBox(
                              width: 70,
                              height: 50,
                              child: TextFormField(
                              controller: _x30,          
                              keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
                              decoration: const InputDecoration(
                                  hintText: 'x₃⁽°⁾',
                                ),
                              ),
                            ),            
                          ]
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
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
                            double x10 = double.parse(_x10.text);
                            double x20 = double.parse(_x20.text);
                            double x30 = double.parse(_x30.text);
                            
                            List<double> approx = [x10, x20, x30];

                            double x11 = double.parse(_x11.text);
                            double x12 = double.parse(_x12.text);
                            double x13 = double.parse(_x13.text);

                            List<double> firstRow = [x11, x12, x13];

                            double x21 = double.parse(_x21.text);
                            double x22 = double.parse(_x22.text);
                            double x23 = double.parse(_x23.text);

                            List<double> secondRow = [x21, x22, x23];

                            double x31 = double.parse(_x31.text);
                            double x32 = double.parse(_x32.text);
                            double x33 = double.parse(_x33.text);

                            List<double> thirdRow = [x31, x32, x33];

                            double b1 = double.parse(_b1.text);
                            double b2 = double.parse(_b2.text);
                            double b3 = double.parse(_b3.text);

                            List<double> b = [b1, b2, b3];

                            double e = double.parse(_e.text);

                            result = iterative(approx, firstRow, secondRow, thirdRow, b, e);
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
          ),
        ),
        ),
      ),
    );
  }
}