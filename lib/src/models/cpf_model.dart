import 'dart:math';

class CpfModel {
  final String value;
  late final String valueWithlessMask;
  late final List<int> digits;
  late List<int> list;

  CpfModel(this.value) {
    valueWithlessMask = cleanMask(value);
    digits = convertInDigits(valueWithlessMask);
  }

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

    var digitOne = checkDigit(10);
    var digitTwo = checkDigit(11);

    if (digitOne != digits[9]) {
      return false;
    }
    if (digitTwo != digits[10]) {
      return false;
    }
    if (digits.toSet().length == 1) {
      return false;
    }

    return true;
  }

  int checkDigit(int index) {
    var digitIndex = 0;
    var digit = 0;

    for (var i = index; i >= 2; i--) {
      digit += digits[digitIndex] * i;
      digitIndex++;
    }

    if (digit % 11 < 2) {
      digit = 0;
    } else {
      digit = 11 - (digit % 11);
    }
    print('object');
    return digit;
  }

  List<int> generatorNumbers() {
    for (int i = 0; i < 9; i++) {
      list.add(Random().nextInt(10));
    }
    return digits;
  }
}
