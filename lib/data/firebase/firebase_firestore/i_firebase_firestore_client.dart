import 'package:flutter_core_module/flutter_core_module.dart';

abstract class IFirebaseFirestoreClient {
  Future<List<Map<String, dynamic>>> getCollection(
      {required String path, int? limit});

  Future<Map<String, dynamic>> getDocument({required String path});

  Future<Map<String, dynamic>> addDocument(
      {required String path, required Map<String, dynamic> object});

  Future<Map<String, dynamic>> setDocument(
      {required String path,
      required String documentId,
      required Map<String, dynamic> object});

  Stream<List<Map<String, dynamic>>> snapshotCollection({
    required String path,
    required FirebaseFirestoreOrderByModel orderBy,
  });
}
