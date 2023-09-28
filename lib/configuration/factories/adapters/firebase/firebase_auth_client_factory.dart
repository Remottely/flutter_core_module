import 'package:flutter_core_module/flutter_core_module.dart';

IFirebaseAuthClient firebaseAuthClientFactory() =>
    FirebaseAuthAdapter(firebaseAuth: FirebaseAuth.instance);
