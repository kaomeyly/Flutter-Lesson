import 'package:flutter/material.dart';
import 'package:flutter_application_1/inheritedwidgetCounterapp/Practice/ChangeText.dart';
import 'package:flutter_application_1/inheritedwidgetCounterapp/Practice/counter_screen2.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.spaceGroteskTextTheme(),
      ),
      home: Changetext(
        text: "",
        child: CounterScreen2(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
