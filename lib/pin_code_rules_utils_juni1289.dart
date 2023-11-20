class PinCodeRulesHelperUtil {
  /// private constructor
  PinCodeRulesHelperUtil._();

  /// the one and only instance of this singleton
  static final instance = PinCodeRulesHelperUtil._();

  ///PIN Code fields Rule#1
  ///check that if the PIN code has all same characters
  ///[pinCode] is the mandatory param to check the pinCode Rule#1
  bool isPinCodeHasSameChars({required String pinCode}) {
    bool isSameChars = true;
    if (pinCode.isNotEmpty) {
      for (int i = 0; i < pinCode.length; i++) {
        if (pinCode[i] != pinCode[0]) {
          isSameChars = false;
        }
      }
    } else {
      isSameChars = true;
    }

    return isSameChars;
  }

  ///PIN Code Fields Rule#2
  ///check that if the PIN code is a palindrome string
  ///[pinCode] is the mandatory param to check the pinCode Rule#2
  bool isPinCodePalindrome({required String pinCode}) {
    bool isPinCodePalindrome = true;
    if (pinCode.isNotEmpty) {
      String stringToReverse = pinCode;
      String reversedString = "";
      String beforeReverse = stringToReverse;
      for (int j = stringToReverse.length - 1; j >= 0; j--) {
        reversedString += stringToReverse[j];
      }
      if (beforeReverse == reversedString) {
        isPinCodePalindrome = true;
      } else {
        isPinCodePalindrome = false;
      }
    }
    return isPinCodePalindrome;
  }
}
