import 'dart:developer';

import 'package:flutter_core_module/flutter_core_module.dart';

class FirebaseFirestoreAdapter implements IFirebaseFirestoreClient {
  final FirebaseFirestore firebaseFirestore;
  FirebaseFirestoreAdapter({required this.firebaseFirestore});

  @override
  Future<List<Map<String, dynamic>>> getCollection(
      {required String path, int? limit}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot = limit != null
          ? await firebaseFirestore.collection(path).limit(limit).get()
          : await firebaseFirestore.collection(path).get();

      if (querySnapshot.docs.isNotEmpty) {
        log('[FIRESETORE_GET_COLLECTION_IS_NOT_EMPTY]');
        final List<Map<String, dynamic>> listMap =
            querySnapshot.docs.map((doc) => doc.data()).toList();
        return listMap;
      } else {
        log('[FIRESETORE_GET_COLLECTION_IS_EMPTY]');
        throw DomainErrorType.unexpected;
      }
    } catch (error) {
      log('[FIRESETORE_GET_COLLECTION_ERROR]: $error');
      throw DomainErrorType.unexpected;
    }
  }

  @override
  Future<Map<String, dynamic>> getDocument({required String path}) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await firebaseFirestore.doc(path).get();

      if (documentSnapshot.exists) {
        log('[FIRESETORE_GET_DOCUMENT_EXISTS]');
        final Map<String, dynamic> map = documentSnapshot.data()!;

        return map;
      } else {
        log('[FIRESETORE_GET_DOCUMENT_DOES_NOT_EXIST]');
        throw DomainErrorType.unexpected;
      }
    } catch (error) {
      log('[FIRESETORE_GET_DOCUMENT_ERROR]: $error');
      throw DomainErrorType.unexpected;
    }
  }

  @override
  Future<Map<String, dynamic>> addDocument({
    required String path,
    required Map<String, dynamic> object,
  }) async {
    try {
      await firebaseFirestore.collection(path).add(object);

      log('[FIRESETORE_ADD_DOCUMENT_SUCCESS]');
      return object;
    } catch (error) {
      log('[FIRESETORE_ADD_DOCUMENT_ERROR]: $error');
      throw DomainErrorType.unexpected;
    }
  }

  @override
  Future<Map<String, dynamic>> setDocument({
    required String path,
    required String documentId,
    required Map<String, dynamic> object,
  }) async {
    try {
      await firebaseFirestore
          .doc('$path/$documentId')
          .set(object); // TODO - IMPLEMENT THIS FUNCTION

      log('[FIRESETORE_SET_DOCUMENT_SUCCESS]');
      return object;
    } catch (error) {
      log('[FIRESETORE_SET_DOCUMENT_ERROR]: $error');
      throw DomainErrorType.unexpected;
    }
  }

  @override
  Stream<List<Map<String, dynamic>>> snapshotCollection({
    required String path,
    required FirebaseFirestoreOrderByModel orderBy,
  }) {
    try {
      final result = firebaseFirestore
          .collection(path)
          .orderBy(orderBy.data, descending: orderBy.descending)
          .snapshots()
          .map(
            (subscription) =>
                subscription.docs.map((doc) => doc.data()).toList(),
          );
      return result;
    } catch (error) {
      log('[FIRESETORE_SNAPSHOT_COLLECTION_ERROR]: $error');
      throw DomainErrorType.unexpected;
    }
  }
}
