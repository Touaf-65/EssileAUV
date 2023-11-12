import 'package:get_storage/get_storage.dart';

class EssileLocalStorage {
  static final EssileLocalStorage _instance = EssileLocalStorage._internal();

  factory EssileLocalStorage() {
    return _instance;
  }

  EssileLocalStorage._internal();

  final _storage = GetStorage();

  // Save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Remove data
  Future<void> removeData<T>(String key) async {
    await _storage.remove(key);
  }

  // Clear data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
