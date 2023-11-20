A Flutter package that can check the PIN | Password rules for the Validations Purposes

## Features

* You can easily check if the PIN | Password has all same characters
* You can easily check if the PIN | Password is Palindrome

## Additional information

* Easy to use and manage
* You just have to provide your params

## Basic Usage

```
    _validatePassword(String givenPin, BuildContext context) {
        if (PinCodeRulesHelperUtil.instance.isPinCodeHasSameChars(pinCode: givenPin)) {
            debugPrint("The PIN code has same characters!");
        } else if (PinCodeRulesHelperUtil.instance.isPinCodePalindrome(pinCode: givenPin)) {
            debugPrint("The PIN code is a Palindrome!");
        } else {
            debugPrint("The PIN code is fine enough :)");
        }
    }
    
    Signature for Rule# 1
    bool isPinCodeHasSameChars({required String pinCode})
    
    Signature for Rule# 2
    bool isPinCodePalindrome({required String pinCode})
```