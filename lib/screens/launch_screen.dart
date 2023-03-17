import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacementNamed(context, '/bio_screen');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'BIO APP',
          style: GoogleFonts.cairo(
            fontSize: 36,
            wordSpacing: 1,
            letterSpacing: 2,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.blue.shade900,
              Colors.blue.shade100,
            ])),
      ),
    );
  }
}
