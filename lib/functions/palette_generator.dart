import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

Future<PaletteGenerator> generatePalette(String path) async {
  PaletteGenerator generator =
      await PaletteGenerator.fromImageProvider(AssetImage(path));
  return generator;
}
