import 'package:flutter/material.dart';
import 'package:payflow2/modules/home/home_page.dart';
import 'package:payflow2/modules/login/login_page.dart';
import 'package:payflow2/modules/splash/splash_page.dart';
import 'package:payflow2/shared/themes/app_colors.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const LoginPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}