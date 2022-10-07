import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CpfGeneratorPage extends StatefulWidget {
  const CpfGeneratorPage({super.key});

  @override
  State<CpfGeneratorPage> createState() => _CpfGeneratorPageState();
}

class _CpfGeneratorPageState extends State<CpfGeneratorPage> {
  String valueCpf = 'as';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
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
              color: Colors.amber,
              child: Text(
                valueCpf,
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
