import 'package:flutter/material.dart';

class CardLabel extends StatelessWidget {
  final String date;
  final double imc;
  const CardLabel({super.key, required this.date, required this.imc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 16,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8),
              child: Row(
                children: [
                  Text(
                    date,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "IMC = ${imc.toString()}",
                  style: const TextStyle(fontSize: 25),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
