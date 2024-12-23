import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/utils/constants.dart';
import 'package:islami/views/splash_view.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark,
                statusBarColor: Colors.transparent,
              )),
          scaffoldBackgroundColor: AppColors.kBlackColor,
          fontFamily: 'Janna'),
      themeMode: ThemeMode.dark,
      home: const SplashView(),
    );
  }
}
