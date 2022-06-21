import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences instance;
  static initPrefs() async {
    instance = await SharedPreferences.getInstance();
  }
}
