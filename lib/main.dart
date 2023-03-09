import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Messenger UI",

      //========================== App Theme ==========================
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          bodyMedium: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          bodySmall: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 25,
        ),
      ),

      //========================== Home Screen ==========================
      home: const HomeScreen(),
    );
  }
}
