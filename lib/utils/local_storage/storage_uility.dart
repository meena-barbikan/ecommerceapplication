import 'package:get_storage/get_storage.dart';

class Tlocalstorage {
  static final Tlocalstorage _instance = Tlocalstorage._internal();
  factory Tlocalstorage() {
    return _instance;
  }
  Tlocalstorage._internal();
  final _storage = GetStorage();

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  Future<void> removedata<T>(String key, T value) async {
    await _storage.remove(
      key,
    );
  }

  Future<void> clearall() async {
    await _storage.erase();
  }
}
