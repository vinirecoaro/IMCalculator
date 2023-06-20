import 'package:flutter/material.dart';
import 'package:imcalculator/pages/imc_calculation_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, textTheme: Typography.blackCupertino),
      debugShowCheckedModeBanner: false,
      home: ImcCalcultaionPage(),
    );
  }
}
