import 'package:couchpotato/pages/suggestions.dart';
import 'package:flutter/material.dart';

// Add-ons
// https://pub.dev/packages/google_fonts
import 'package:google_fonts/google_fonts.dart';

// Main function to launch application

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = '\nCouch Potato';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        useMaterial3: true,
        // Define the default brightness and colors.
        //primarySwatch: Colors.white,
        scaffoldBackgroundColor: Colors.white,

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            //fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ),
      home: const Suggestions(
        title: appName,
      ),
    );
  }
}
