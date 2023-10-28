import 'package:asadah/pages/about_page.dart';
import 'package:asadah/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Widget> _pages = [
    HomePage(),
    Text("2"),
    AboutPage(),
  ];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Image.asset('assets/images/logo_full_white.png', height: 35),
        automaticallyImplyLeading: false,
      ),
      body: _pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        height: 50,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: Theme.of(context).colorScheme.secondary,
        selectedIndex: currentPageIndex,
        backgroundColor: Theme.of(context).colorScheme.background,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Colors.white,),
            icon: Icon(Icons.home_outlined, color: Theme.of(context).brightness == Brightness.dark ? Theme.of(context).colorScheme.secondary : Colors.black),
            label: 'Beranda',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.folder, color: Colors.white),
            icon: Icon(Icons.folder_outlined, color: Theme.of(context).brightness == Brightness.dark ? Theme.of(context).colorScheme.secondary : Colors.black),
            label: 'Pinjaman',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle, color: Colors.white),
            icon: Icon(Icons.account_circle_outlined, color: Theme.of(context).brightness == Brightness.dark ? Theme.of(context).colorScheme.secondary : Colors.black),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}