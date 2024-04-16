import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 231, 231, 231),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 148, 233, 115)),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            elevation: MaterialStateProperty.all(5),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          )
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
          ),
          labelLarge: TextStyle(
            fontSize: 16,
          )
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 1,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ЧИСЛЕННЫЕ МЕТОДЫ'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('МЕТОДЫ РЕШЕНИЯ УРАВНЕНИЙ'),
              SizedBox(
                width: 230,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/hordpage');
                  },
                  child: const Text('МЕТОД ХОРД'),
                ),
              ),
              SizedBox(
                width: 230,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tangentpage');
                  },
                  child: const Text('МЕТОД КАСАТЕЛЬНЫХ'),
                ),
              ),
              SizedBox(
                width: 230,
                height: 50,
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle( 
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 135, 48, 48)),
                  ),
                  child: const Text('МЕТОД ИТЕРАЦИЙ'),
                ),
              ),
              const Text('МЕТОДЫ РЕШЕНИЯ СИСТЕМ УРАВНЕНИЙ'),
              SizedBox(
                width: 230,
                height: 50,
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle( 
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 135, 48, 48)),
                  ),
                  child: const Text('МЕТОД ГАУССА'),
                ),
              ),
              SizedBox(
                width: 230,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/iterationpage');
                  },
                  child: const Text('МЕТОД ИТЕРАЦИЙ'),
                ),
              ),
              SizedBox(
                width: 230,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/zeidelpage');
                  },
                  child: const Text('МЕТОД ЗЕЙДЕЛЯ'),
                ),
              ),
            ],
            
          )
        ),
      ),
    );
  }
}
