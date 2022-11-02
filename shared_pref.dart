import 'package:shared_preferences/shared_preferences.dart';
// in main function call
await LuckySharedPef.init();



class LuckySharedPef {
  static SharedPreferences? sharedPreferences;
  static const authToken = 'authToken';

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences;
  }

  static Future saveAuthToken(String token) {
    return sharedPreferences!.setString(authToken, token);
  }

  static String getString() {
    return sharedPreferences!.getString(authToken) ?? "";
  }
}
