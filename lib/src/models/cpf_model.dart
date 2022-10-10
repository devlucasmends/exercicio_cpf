import 'dart:math';

class CpfModel {
  // final String value;
  late final String valueWithlessMask;
  late final List<int> digits;
  List<int> list = [];

  CpfModel() {
    // this.value
    // valueWithlessMask = cleanMask(value);
    // digits = convertInDigits(valueWithlessMask);
    // generatorNumbers();
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
      digit += list[digitIndex] * i;
      digitIndex++;
    }

    if (digit % 11 < 2) {
      digit = 0;
    } else {
      digit = 11 - (digit % 11);
    }
    return digit;
  }

  String generatorNumbers() {
    list = [];
    String valueCpf;
    for (int i = 0; i < 9; i++) {
      list.add(Random().nextInt(10));
    }
    list.add(checkDigit(10));
    list.add(checkDigit(11));
    // for (int i = 0; i < list.length; i++) {
    //   print(list[i]);
    // }
    valueCpf = list.toString().replaceAll(RegExp(r'[^\d]'), '');
    valueCpf = formatMask(valueCpf.split(''));

    return valueCpf;
  }

  String formatMask(List<String> value) {
    value.insert(3, '.');
    value.insert(7, '.');
    value.insert(11, '-');
    return value
        .toString()
        .replaceAll(RegExp(r'[^\d{3}\x2E\d{3}\x2E\d{3}\x2D\d{2}$]'), '');
  }
}
