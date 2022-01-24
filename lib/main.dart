import 'package:flutter/material.dart';

import 'src/pages/homePage.dart';
import 'src/pages/loginPage.dart';
import 'src/pages/registerPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage()
      },
    );
  }
}
