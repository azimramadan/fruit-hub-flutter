import 'package:fruit_hub/core/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  SharedPrefService._();

  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setOnboardingSeen(bool value) async {
    await _prefs.setBool(AppConstants.kOnboardingSeen, value);
  }

  static bool get onboardingSeen {
    return _prefs.getBool(AppConstants.kOnboardingSeen) ?? false;
  }
}
