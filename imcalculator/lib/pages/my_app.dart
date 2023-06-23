import 'package:flutter/material.dart';
import 'package:imcalculator/pages/imc_historic.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 26, 64, 95),
          textTheme: Typography.blackCupertino),
      debugShowCheckedModeBanner: false,
      home: const ImcHistoricPage(),
    );
  }
}
