import 'package:flutter/material.dart';
import 'package:ielts_app/screens/four_modules_screen.dart';
import 'package:ielts_app/screens/intro_screen.dart';
import 'package:ielts_app/screens/practice_material_screen.dart';
import 'package:ielts_app/screens/registration_screen.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'IELTS BUDDY',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.blueGrey,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          IntroScreen.routeName: (ctx) => IntroScreen(),
          FourModulesScreen.routeName: (ctx) => FourModulesScreen(),
          PracticeMaterialScreen.routeName: (ctx) => PracticeMaterialScreen(),
          RegistrationAndExam.routeName: (ctx) => RegistrationAndExam(),
        });
  }
}
