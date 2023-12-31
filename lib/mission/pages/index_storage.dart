// index_storage.dart
import 'package:shared_preferences/shared_preferences.dart';

class IndexStorage {
  static const String _key = 'currentIndex';

  static Future<int> readIndex() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_key) ?? 0;
  }

  static Future<void> writeIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(_key, index);
  }
}
