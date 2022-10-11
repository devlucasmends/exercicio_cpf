import 'package:exercicio_cpf/src/pages/cpf_generator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CpfGeneratorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
