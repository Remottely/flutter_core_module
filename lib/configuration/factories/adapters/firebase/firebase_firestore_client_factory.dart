import 'package:flutter_core_module/flutter_core_module.dart';

IFirebaseFirestoreClient firebaseFirestoreClientFactory() =>
    FirebaseFirestoreAdapter(firebaseFirestore: FirebaseFirestore.instance);
