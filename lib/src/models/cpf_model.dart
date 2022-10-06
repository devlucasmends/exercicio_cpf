class CpfModel {
//declarar a string que vai pegar o cpf
  final String value;
  late final String valueWithlessMask;
  late final List<int> digits;

  CpfModel(this.value) {
    valueWithlessMask = cleanMask(value);
    digits = convertInDigits(valueWithlessMask);
  }

//regex verificar
//verificar se eh valido
  String cleanMask(String value) {
    return value.replaceAll(RegExp(r'[^\d]'), '');
  }

  List<int> convertInDigits(String value) {
    return value.split('').map((e) => int.parse(e)).toList();
  }

  bool isValid() {
    if (digits.length != 11) {
      return false;
    }

    var digitOne = 0;
    var digitTwo = 0;
    var digitIndex = 0;

    for (var i = 10; i >= 2; i--) {
      digitOne += digits[digitIndex] * i;
      digitIndex++;
    }

    if (digitOne % 11 < 2) {
      digitOne = 0;
    } else {
      digitOne = 11 - (digitOne % 11);
    }

    digitIndex = 0;

    for (var i = 11; i >= 2; i--) {
      digitTwo += digits[digitIndex] * i;
      digitIndex++;
    }

    if (digitTwo % 11 < 2) {
      digitTwo = 0;
    } else {
      digitTwo = 11 - (digitTwo % 11);
    }

    print(digitOne);
    print(digitTwo);

    if (digitOne != digits[9]) {
      return false;
    }

    return true;
  }

  int validDigits(int index) {
    var digit = 0;
    var index = 0;

    for (var i = 10; i >= 2; i--) {
      digit += digits[index] * i;
      index++;
    }

    if (digit % 11 < 2) {
      digit = 0;
    } else {
      digit = 11 - (digit % 11);
    }
    return 0;
  }

//verificar se não são todos iguais
//dividir os digitos
//calcular o primeiro digito verificar
//testa o digito verificador e o segundo e todos em seguida
//calcula o segundo digito verificador
//testa o segundo digito verificador

}
