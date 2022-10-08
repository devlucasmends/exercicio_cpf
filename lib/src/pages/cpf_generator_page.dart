import 'package:exercicio_cpf/src/models/cpf_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CpfGeneratorPage extends StatefulWidget {
  const CpfGeneratorPage({super.key});

  @override
  State<CpfGeneratorPage> createState() => _CpfGeneratorPageState();
}

class _CpfGeneratorPageState extends State<CpfGeneratorPage> {
  final cpf = CpfModel();
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  cpf.generatorNumbers();
                });
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(100, 50),
                ),
              ),
              child: const Text('Gerar CPF'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              color: Colors.grey.shade300,
              child: Center(
                child: Text(
                  cpf.generatorNumbers(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
