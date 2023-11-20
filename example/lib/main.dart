import 'package:flutter/material.dart';
import 'package:pin_code_rules_utils_juni1289/pin_code_rules_utils_juni1289.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', theme: ThemeData(primarySwatch: Colors.blue), home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("PIN Test")),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          TextButton(
              onPressed: () {
                _validatePassword("1111", context);
              },
              child: Center(child: Text('Check 1111', style: Theme.of(context).textTheme.headlineMedium))),
          TextButton(
              onPressed: () {
                _validatePassword("1221", context);
              },
              child: Center(child: Text('Check 1221', style: Theme.of(context).textTheme.headlineMedium))),
          TextButton(
              onPressed: () {
                _validatePassword("1234", context);
              },
              child: Center(child: Text('Check 1234', style: Theme.of(context).textTheme.headlineMedium)))
        ])));
  }

  _validatePassword(String givenPin, BuildContext context) {
    if (PinCodeRulesHelperUtil.instance.isPinCodeHasSameChars(pinCode: givenPin)) {
      debugPrint("The PIN code has same characters!");
    } else if (PinCodeRulesHelperUtil.instance.isPinCodePalindrome(pinCode: givenPin)) {
      debugPrint("The PIN code is a Palindrome!");
    } else {
      debugPrint("The PIN code is fine enough :)");
    }
  }
}
