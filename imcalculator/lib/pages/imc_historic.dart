import 'package:flutter/material.dart';
import 'package:imcalculator/model/imc.dart';
import 'package:imcalculator/repositories/imc_sqlite_repository.dart';
import 'package:imcalculator/service/app_storage_sevice.dart';
import 'package:imcalculator/shared/widgets/card_label.dart';

class ImcHistoricPage extends StatefulWidget {
  const ImcHistoricPage({super.key});

  @override
  State<ImcHistoricPage> createState() => _ImcHistoricPageState();
}

class _ImcHistoricPageState extends State<ImcHistoricPage> {
  var dateController = TextEditingController(text: "");
  var heightController = TextEditingController(text: "");
  var weightController = TextEditingController(text: "");
  var _imcList = <IMC>[];

  var appStorageService = AppStorageService();

  IMCSQLiteRepository imcRepository = IMCSQLiteRepository();

  double? height;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    _imcList = await imcRepository.obtainData();
    height = await appStorageService.getHeight();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: const Text("IMC Historic")),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                dateController.text = "";
                heightController.text = height.toString();
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
                            TextField(controller: heightController),
                            const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text("Peso"),
                            ),
                            TextField(controller: weightController),
                          ],
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                appStorageService.setHeight(
                                    double.parse(heightController.text));
                                imcRepository.save(IMC(
                                    dateController.text,
                                    double.parse(heightController.text),
                                    double.parse(weightController.text)));
                                Navigator.pop(context);
                                loadData();
                                setState(() {});
                              },
                              child: const Text("Salvar"))
                        ],
                      );
                    });
              },
              backgroundColor: const Color.fromARGB(255, 26, 64, 95),
              child: const Icon(Icons.add),
            ),
            body: ListView.builder(
                itemCount: _imcList.length,
                itemBuilder: (BuildContext bc, int index) {
                  return CardLabel(
                      date: _imcList[index].date,
                      imc: _imcList[index].returnIMC());
                })));
  }
}
