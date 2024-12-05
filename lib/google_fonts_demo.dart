import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsDemo extends StatefulWidget {
  const GoogleFontsDemo({super.key});

  @override
  State<GoogleFontsDemo> createState() => _GoogleFontsDemoState();
}

class _GoogleFontsDemoState extends State<GoogleFontsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        title: Text(
          'Zenil',
          style: GoogleFonts.aboreto(color: Colors.amber),
        ),
      ),
    );
  }
}
