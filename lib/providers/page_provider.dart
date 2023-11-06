import 'package:asadah/pages/about_page.dart';
import 'package:asadah/pages/home_page.dart';
import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  final List<Widget> _pages = [
    const HomePage(),
    const Text("2"),
    const AboutPage(),
  ];
  int _currentPageIndex = 0;
  bool _notificationActive = false;


  Widget get page => _pages[_currentPageIndex];
  int get index => _currentPageIndex;
  bool get isNotificationActive => _notificationActive;

  void changeCurrentIndex(int idx) {
    _currentPageIndex = idx;
    notifyListeners();
  }

  void changeNotification(bool val) {
    _notificationActive = val;
    notifyListeners();
  }
}
