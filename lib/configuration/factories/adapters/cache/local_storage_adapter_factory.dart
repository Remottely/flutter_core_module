import 'package:flutter_core_module/flutter_core_module.dart';

ICacheStorage localStorageAdapterFactory(String keyPath) =>
    LocalStorageAdapter(localStorage: LocalStorage(keyPath));
