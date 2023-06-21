import 'package:flutter/material.dart';

class ImcHistoricPage extends StatefulWidget {
  const ImcHistoricPage({super.key});

  @override
  State<ImcHistoricPage> createState() => _ImcHistoricPageState();
}

class _ImcHistoricPageState extends State<ImcHistoricPage> {
  var dateController = TextEditingController(text: "");
  var heightController = TextEditingController(text: "");
  var weightController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("IMC Historic")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dateController.text = "";
          heightController.text = "";
          weightController.text = "";
          showDialog(
              context: context,
              builder: (BuildContext bc) {
                return AlertDialog(
                  title: const Text("IMC Calculator"),
                  content: Wrap(
                    children: [
                      const Text("Data"),
                      TextField(controller: dateController),
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text("Altura"),
                      ),
                      TextField(controller: dateController),
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text("Peso"),
                      ),
                      TextField(controller: dateController),
                    ],
                  ),
                  actions: [
                    TextButton(onPressed: () {}, child: const Text("Salvar"))
                  ],
                );
              });
        },
        backgroundColor: const Color.fromARGB(255, 26, 64, 95),
        child: const Icon(Icons.add),
      ),
    ));
  }
}
