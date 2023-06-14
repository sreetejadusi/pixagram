import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:pixagram/functions/palette_generator.dart';
import 'package:pixagram/interface/home.dart';

void main() {
  runApp(const PixaGram());
}

class PixaGram extends StatelessWidget {
  const PixaGram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Start(),
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    // PaletteGenerator? colors;
    // generatePalette('assets/logo.png').then((value) {
    //   colors = value;
    // });
    return Scaffold(
      body: Home(),
    );
  }
}
