import 'package:flutter/material.dart';
import 'package:mathapp/pages/zeidel_page.dart';
import 'pages/home_page.dart';
import 'pages/hord_page.dart';
import 'pages/tangent_page.dart';
import 'pages/iteration_page.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const MainApp(),
    '/hordpage': (context) => const HordPage(),
    '/tangentpage': (context) => const TangentPage(),
    '/iterationpage': (context) => const IterationPage(),
    '/zeidelpage': (context) => const ZeidelPage(),
  },
));
