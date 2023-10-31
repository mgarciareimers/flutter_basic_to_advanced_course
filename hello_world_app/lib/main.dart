import 'package:flutter/material.dart';

// Screens.
import 'package:hello_world_app/src/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: const CounterFunctionsScreen(),
    );
  }
}
