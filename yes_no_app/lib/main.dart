import 'package:flutter/material.dart';

// Config.
import 'package:yes_no_app/src/config/theme/app_theme.dart';

// Screens.
import 'package:yes_no_app/src/presentation/screens/chat_screen.dart';

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
      theme: AppTheme(selectedColor: 0).theme(),
      home: const ChatScreen(),
    );
  }
}
