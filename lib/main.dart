import 'package:flutter/material.dart';
import 'package:flutter_catlog_app/utils/MyRoutes.dart';
import 'package:flutter_catlog_app/widgets/Theme.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/LoginPage.dart';
import 'screens/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: MyTheme.darkTheme(context),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.home: (context) => MyHomePage(),
        MyRoutes.login: (context) => LoginPage()
      },
    );
  }
}
