import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/pages/HomePage.dart';
import 'package:whatsapp/pages/SettingsPage.dart';
import 'package:whatsapp/pages/chatPage.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) {
          return HomePage();
        });
      case 'settingsPage':
        return MaterialPageRoute(builder: (context) {
          return SettingsPage();
        });
      case 'chatPage':
        return MaterialPageRoute(builder: (context) {
          return ChatPage();
        });
    }
  }
}
