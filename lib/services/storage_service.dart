import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  StorageService._privateConstructor();

  static final StorageService _instance = StorageService._privateConstructor();

  factory StorageService() {
    return _instance;
  }

  SharedPreferences? instance;
}