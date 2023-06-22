import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        height: 90,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 16,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Row(
                  children: [
                    Text(
                      "21/06/23",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "IMC = 25.45",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
