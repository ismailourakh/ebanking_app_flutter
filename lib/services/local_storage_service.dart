import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageService {
  static const _storage = FlutterSecureStorage();

  static Future<void> writeData(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  static Future<String?> readData(String key) async {
    return await _storage.read(key: key);
  }

  static Future<void> deleteData(String key) async {
    await _storage.delete(key: key);
  }
}
