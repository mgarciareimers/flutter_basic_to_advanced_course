import 'package:flutter/material.dart';

// Config.
import 'package:yes_no_app/src/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Material App Bar'
          ),
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: const Text(
              'Click me'
            )
          ),
        ),
      ),
    );
  }
}
