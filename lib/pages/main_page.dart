import 'package:asadah/pages/about_page.dart';
import 'package:asadah/pages/home_page.dart';
import 'package:asadah/styles.dart';
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
        backgroundColor: primaryColor,
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
        indicatorColor: Theme.of(context).colorScheme.primary,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Colors.white,),
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.folder, color: Colors.white),
            icon: Icon(Icons.folder_outlined),
            label: 'Pinjaman',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle, color: Colors.white),
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}