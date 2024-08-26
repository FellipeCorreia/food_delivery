import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigTitle extends StatelessWidget {
  final String title;
  final Color color;


  const BigTitle({super.key, required this.title, required this.color,});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold,)),
    );
  }
}

class SmallDescription extends StatelessWidget {
  final String description;
  final Color color;

  const SmallDescription({super.key, required this.description, required this.color,});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500,)),
    );
  }
}