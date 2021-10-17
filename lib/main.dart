import 'package:flutter/material.dart';
import 'package:nlw_payflow/modules/home/home_page.dart';
import 'package:nlw_payflow/modules/login/login_page.dart';
import 'package:nlw_payflow/modules/splash/splash_page.dart';
import 'package:nlw_payflow/shared/themes/app_colors.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const LoginPage(),
    );
  }
}
