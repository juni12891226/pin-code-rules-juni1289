import 'package:flutter/material.dart';

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
          TextButton(onPressed: _validatePassword("12345"), child: Center(child: Text('Check 12345', style: Theme.of(context).textTheme.headlineMedium))),
          TextButton(onPressed: _validatePassword("1122"), child: Center(child: Text('Check 1122', style: Theme.of(context).textTheme.headlineMedium))),
          TextButton(onPressed: _validatePassword("1111"), child: Center(child: Text('Check 1111', style: Theme.of(context).textTheme.headlineMedium)))
        ])));
  }

  _validatePassword(String givenPin) {}
}
