import 'package:asadah/pages/input_akad_page.dart';
import 'package:asadah/providers/theme_mode_provider.dart';
import 'package:asadah/providers/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:asadah/components/button_component.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeModeProvider, ThemeProvider>(
      builder: (context, themeModeData, themeData, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).colorScheme.primary,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Image.asset('assets/images/icon_white.png', height: 70),
            leading: const BackButton(color: Colors.white),
          ),
          body: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Tampilan",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - 200),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(60.0)),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchListTile(
                        value: Provider.of<ThemeModeProvider>(context)
                            .isDarkModeActive,
                        title: Text("Tampilan Gelap",
                            style: Theme.of(context).textTheme.bodySmall),
                        onChanged: (bool value) {
                          Provider.of<ThemeModeProvider>(context, listen: false)
                              .changeTheme(
                            value ? ThemeMode.dark : ThemeMode.light,
                          );
                        },
                      ),
                      ListTile(
                        title: Text("Tema Tampilan",
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: Provider.of<ThemeProvider>(context)
                              .schemes
                              .map((e) {
                                int idx = Provider.of<ThemeProvider>(
                                                      context,
                                                      listen: false)
                                                  .schemes
                                                  .indexOf(e);
                                return GestureDetector(
                                    onTap: () {
                                      Provider.of<ThemeProvider>(context,
                                              listen: false)
                                          .changeLightSchemeColor(idx);
                                    },
                                    child: Container(
                                      width: 80,
                                      height: 100,
                                      margin: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: e,
                                          border: idx == Provider.of<ThemeProvider>(context)
                              .schemeIndex ? Border.all(width: 5, color: Colors.white30) : null),
                                    ),
                                  );
                              })
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ButtonComponent(
                        buttontext: "Simpan",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InputAkadPage()),
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
