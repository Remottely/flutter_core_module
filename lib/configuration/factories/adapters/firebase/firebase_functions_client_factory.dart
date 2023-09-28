import 'package:flutter_core_module/flutter_core_module.dart';

IFirebaseFunctionsClient firebaseFunctionsClientFactory() =>
    FirebaseFunctionsAdapter(firebaseFunctions: FirebaseFunctions.instance);
