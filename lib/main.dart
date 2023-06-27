import 'package:flutter/material.dart';
import 'package:whatsapp/functions/RoutesGenerators.dart';
// import 'package:whatsapp/pages/HomePage.dart';
// import 'package:whatsapp/pages/SettingsPage.dart';
// import 'package:whatsapp/pages/chatPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF075e54),
        ),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color.fromARGB(255, 181, 185, 181)),
      ),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
      // routes: {
      //   "/": (context) => HomePage(),
      //   "settingsPage": (context) => SettingsPage(),
      //   "chatPage": ((context) => ChatPage())
      // },
    );
  }
}
