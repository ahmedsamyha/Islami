import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  static late final SharedPreferences pref;
  static init() async {
    pref = await SharedPreferences.getInstance();
  }

  static Future<bool> saveEligibility() async {
    bool result = await pref.setBool('OnBoarding', true);
    return result;
  }

  static bool? getEligibility() {
    return pref.getBool('OnBoarding');
  }
}
