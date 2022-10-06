import 'package:exercicio_cpf/src/models/cpf_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var cpf = CpfModel('111.444.777-05');
  print(cpf.isValid());

  cpf = CpfModel('040.527.941-84');
  print(cpf.isValid());

  cpf = CpfModel('002.861.071-75');
  print(cpf.isValid());
}
