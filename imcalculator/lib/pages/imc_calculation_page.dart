import 'package:flutter/material.dart';

import '../shared/widgets/text_label.dart';

class ImcCalcultaionPage extends StatefulWidget {
  const ImcCalcultaionPage({super.key});

  @override
  State<ImcCalcultaionPage> createState() => _ImcCalcultaionPageState();
}

class _ImcCalcultaionPageState extends State<ImcCalcultaionPage> {
  var heightController = TextEditingController(text: "");
  var weightController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("IMC Calcultor")),
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const TextLabel(
              text: "Altura",
            ),
            TextField(
              controller: heightController,
            ),
            const TextLabel(
              text: "Peso",
            ),
            TextField(
              controller: weightController,
            ),
            Center(
                child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 117, 116, 117))),
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
