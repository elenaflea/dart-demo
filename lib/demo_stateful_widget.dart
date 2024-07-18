
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home:FormulaireConnection()
    );
  }
}

class FormulaireConnection extends StatefulWidget {
  const FormulaireConnection({super.key});

  @override
  State<FormulaireConnection> createState() => _FormulaireConnectionState();
}

class _FormulaireConnectionState extends State<FormulaireConnection> {
  final controllerEmail = TextEditingController(text: "");
  bool valueSwitch = false;
  bool valueCheck = false;
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(label: Text("e-mail")),
            ),
            Switch(
                value: valueSwitch,
                onChanged: (b){
                     setState(() {
                       valueSwitch = b;
                      });

            }),
            Checkbox(value: valueCheck, onChanged: (c){
              setState(() {
                valueCheck = c!;
              });
            })

          ],
        ),
      )
    );
  }
}
