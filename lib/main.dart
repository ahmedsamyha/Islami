import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/utils/chash_helper.dart';
import 'package:islami/utils/constants.dart';
import 'package:islami/views/splash_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  runApp( DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const IslamiApp(), // Wrap your app
  ),);
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
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
