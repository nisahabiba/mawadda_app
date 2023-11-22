import 'package:injectable/injectable.dart';

import '../../core/di/injector.dart';
import '../../core/util/shared_preferences_util.dart';

@lazySingleton
class AuthUtil {
  final SharedPreferencesUtil _sharedPreferencesUtil =
      getIt<SharedPreferencesUtil>();
  static const String pefKeyAccessToken = "ACCESS_TOKEN";

  Future<void> setAccessToken(String value) async {
    await _sharedPreferencesUtil.setString(pefKeyAccessToken, value);
  }

  String? getAccessToken() {
    final String? token = _sharedPreferencesUtil.getString(pefKeyAccessToken);
    return token;
  }

  Future<bool> hasAccessToken() async {
    final String? token = _sharedPreferencesUtil.getString(pefKeyAccessToken);
    return token != null && token != '';
  }

  Future<void> deleteAccessToken() async {
    await _sharedPreferencesUtil.clearKey(pefKeyAccessToken);
  }
}
