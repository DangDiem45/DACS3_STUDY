import 'package:shared_preferences/shared_preferences.dart';

import '../util/constants.dart';

class StorageService{
  late final SharedPreferences _pref;

  Future<StorageService> init() async{
    _pref = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setString(String key, String value) async{
    return await _pref.setString(key, value);
  }

  String getUserToken(){
    return _pref.getString(AppConstants.STORAGE_USER_TOKEN_KEY)??"";
  }
}