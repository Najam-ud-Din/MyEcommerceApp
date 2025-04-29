import 'package:get_storage/get_storage.dart';

class TlocalStorage {
  static final TlocalStorage _instance = TlocalStorage._internal();

  factory TlocalStorage() {
    return _instance;
  }

  TlocalStorage._internal();

  final _storage = GetStorage();

  //Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //Generic method to remove data
  Future<void> removedata<T>(String key) async {
    await _storage.remove(key);
  }

  //Clear all data in Storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
