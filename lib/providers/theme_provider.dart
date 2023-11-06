import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  int _schemeIndex = 0;
  final List<Color> _schemes = [
    const Color(0xFF084749),
    const Color(0xFF611C35),
    const Color(0xFF634133),
    const Color(0xFF07004D),
  ];

  final List<ColorScheme> _lightSchemeColors = [
    ColorScheme.fromSeed(seedColor: Colors.teal).copyWith(
        primary: const Color(0xFF084749),
        secondary: const Color(0xFF0d7377),
        tertiary: const Color(0xFF129fa5),
        background: Colors.white,
        brightness: Brightness.light),
    ColorScheme.fromSeed(seedColor: Colors.red).copyWith(
        primary: const Color(0xFF611C35),
        secondary: const Color(0xFFb23361),
        tertiary: const Color(0xFFd77498),
        background: Colors.white,
        brightness: Brightness.light),
    ColorScheme.fromSeed(seedColor: Colors.brown).copyWith(
        primary: const Color(0xFF634133),
        secondary: const Color(0xFF97634e),
        tertiary: const Color(0xFFb17d68),
        background: Colors.white,
        brightness: Brightness.light),
    ColorScheme.fromSeed(seedColor: Colors.blue).copyWith(
        primary: const Color(0xFF07004D),
        secondary: const Color(0xFF5d4dff),
        tertiary: const Color(0xFF8b80ff),
        background: Colors.white,
        brightness: Brightness.light),
  ];

  final List<ColorScheme> _darkSchemeColors = [
    ColorScheme.fromSeed(seedColor: Colors.black).copyWith(
        primary: const Color(0xFF282828),
        secondary: const Color(0xFF799494),
        tertiary: const Color(0xFF129fa5),
        background: const Color(0xFF131312),
        brightness: Brightness.dark),
    ColorScheme.fromSeed(seedColor: Colors.red).copyWith(
        primary: const Color(0xFF611c35),
        secondary: const Color(0xFF733548),
        tertiary: const Color(0xFF854d5d),
        background: const Color(0xFF131312),
        brightness: Brightness.dark),
    ColorScheme.fromSeed(seedColor: Colors.brown).copyWith(
        primary: const Color(0xFF634133),
        secondary: const Color(0xFF745447),
        tertiary: const Color(0xFF85675b),
        background: const Color(0xFF131312),
        brightness: Brightness.dark),
    ColorScheme.fromSeed(seedColor: Colors.blue).copyWith(
        primary: const Color(0xFF07004D),
        secondary: const Color(0xFF776899),
        tertiary: const Color(0xFF433373),
        background: const Color(0xFF131312),
        brightness: Brightness.dark),
  ];

  ColorScheme get lightSchemeColor => _lightSchemeColors[_schemeIndex];
  ColorScheme get darkSchemeColor => _darkSchemeColors[_schemeIndex];
  List<Color> get schemes => _schemes;
  int get schemeIndex => _schemeIndex;

  void changeLightSchemeColor(int idx) {
    _schemeIndex = idx;
    notifyListeners();
  }
}
