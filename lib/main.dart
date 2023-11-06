import 'package:asadah/pages/input_akad_page.dart';
import 'package:asadah/pages/introduction_page.dart';
import 'package:asadah/pages/main_page.dart';
import 'package:asadah/pages/theme_page.dart';
import 'package:asadah/providers/akad_provider.dart';
import 'package:asadah/providers/page_provider.dart';
import 'package:asadah/providers/theme_mode_provider.dart';
import 'package:asadah/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class Palette {
  static const MaterialColor lightPalette = MaterialColor(
    0xFF084749, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color.fromRGBO(8, 71, 73, .1), //10%
      100: Color.fromRGBO(8, 71, 73, .2), //20%
      200: Color.fromRGBO(8, 71, 73, .3), //30%
      300: Color.fromRGBO(8, 71, 73, .4), //40%
      400: Color.fromRGBO(8, 71, 73, .5), //50%
      500: Color.fromRGBO(8, 71, 73, .6), //60%
      600: Color.fromRGBO(8, 71, 73, .7), //70%
      700: Color.fromRGBO(8, 71, 73, .8), //80%
      800: Color.fromRGBO(8, 71, 73, .9), //90%
      900: Color.fromRGBO(8, 71, 73, 1), //100%
    },
  );

  static const MaterialColor darkPalette = MaterialColor(
    0xFF084749, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color.fromRGBO(121, 148, 148, .1), //10%
      100: Color.fromRGBO(121, 148, 148, .2), //20%
      200: Color.fromRGBO(121, 148, 148, .3), //30%
      300: Color.fromRGBO(121, 148, 148, .4), //40%
      400: Color.fromRGBO(121, 148, 148, .5), //50%
      500: Color.fromRGBO(121, 148, 148, .6), //60%
      600: Color.fromRGBO(121, 148, 148, .7), //70%
      700: Color.fromRGBO(121, 148, 148, .8), //80%
      800: Color.fromRGBO(121, 148, 148, .9), //90%
      900: Color.fromRGBO(121, 148, 148, 1), //100%
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => ThemeModeProvider()),
        ChangeNotifierProvider(
            create: (BuildContext context) => PageProvider()),
        ChangeNotifierProvider(create: (BuildContext context) => ThemeProvider()),
        ChangeNotifierProvider(create: (BuildContext context) => AkadProvider())
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Asadah',
          navigatorKey: navigatorKey,
          theme: ThemeData(
              colorScheme: Provider.of<ThemeProvider>(context).lightSchemeColor,
              textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme.copyWith(
                    displayLarge: const TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w500),
                    displaySmall:
                        const TextStyle(color: Colors.white, fontSize: 16),
                    displayMedium: const TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                    bodyMedium:
                        const TextStyle(color: Color(0xFF333333), fontSize: 18),
                    titleMedium: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.normal),
                    bodySmall: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
              ),
              fontFamily: "poppins",
              useMaterial3: true,
              primaryColor: const Color(0xFF084749),
              primarySwatch: Palette.lightPalette),
          darkTheme: ThemeData(
            colorScheme: Provider.of<ThemeProvider>(context).darkSchemeColor,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.copyWith(
                  displayLarge: const TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w500),
                  displaySmall:
                      const TextStyle(color: Colors.white, fontSize: 16),
                  displayMedium: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                  bodyMedium:
                      const TextStyle(color: Color(0xFF799494), fontSize: 18),
                  titleMedium: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.normal),
                  bodySmall: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  )),
            ),
            fontFamily: "poppins",
            primaryColor: const Color(0xFF799494),
            primarySwatch: Palette.darkPalette,
            useMaterial3: true,
          ),
          themeMode: Provider.of<ThemeModeProvider>(context).themeMode,
          home: const MainPage(),
        );
      }),
    );
  }
}
