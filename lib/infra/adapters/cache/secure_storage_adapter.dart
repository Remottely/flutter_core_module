import 'package:flutter_core_module/flutter_core_module.dart';

class SecureStorageAdapter
    implements
        ISaveSecureCacheStorage,
        IFetchSecureCacheStorage,
        IDeleteSecureCacheStorage {
  final FlutterSecureStorage secureStorage;

  SecureStorageAdapter({required this.secureStorage});

  @override
  Future<void> save({required String key, required String value}) async {
    await secureStorage.write(key: key, value: value);
  }

  @override
  Future<String?> fetch(String key) async {
    return await secureStorage.read(key: key);
  }

  @override
  Future<void> delete(String key) async {
    await secureStorage.delete(key: key);
  }
}
