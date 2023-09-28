import 'package:flutter_core_module/flutter_core_module.dart';

SecureStorageAdapter localSecureStorageAdapterFactory() =>
    SecureStorageAdapter(secureStorage: const FlutterSecureStorage());
