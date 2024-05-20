import 'package:dacs3/services/storage.dart';

import 'package:flutter/cupertino.dart';


class Global{
  static late StorageService storageService;

  static Future init() async{
    WidgetsFlutterBinding.ensureInitialized();

    storageService = await StorageService().init();
  }
}