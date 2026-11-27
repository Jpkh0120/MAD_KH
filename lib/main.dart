import 'package:flutter/material.dart';
import 'package:kokhao/screen/home.dart';

void main() {
  runApp(const KokHao());
}

class KokHao extends StatefulWidget {
  const KokHao({super.key});

  @override
  State<KokHao> createState() => _KokHaoState();
}

class _KokHaoState extends State<KokHao> {
  ThemeMode _themeMode = ThemeMode.light;
  void toggleTheme() {
    setState(() {
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: HomePage(
        onToggleTheme: toggleTheme,
        isDarkMode: _themeMode == ThemeMode.dark,
      ),
    );
  }
}
