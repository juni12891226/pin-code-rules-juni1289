import 'package:flutter_test/flutter_test.dart';

import 'package:pin_code_rules_utils_juni1289/pin_code_rules_utils_juni1289.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });
}
