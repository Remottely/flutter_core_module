import 'dart:developer';

import 'package:flutter_core_module/flutter_core_module.dart';

class FirebaseAuthAdapter implements IFirebaseAuthClient {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthAdapter({required this.firebaseAuth});

  @override
  User? get currentUser {
    return firebaseAuth.currentUser;
  }

  @override
  Stream<User?> authStateChanges() async* {
    yield* firebaseAuth.authStateChanges();
  }

  @override
  Future<UserCredential> addUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      log('[addUserWithEmailAndPassword_SUCCESS]');
      return result;
    } on FirebaseAuthException catch (error) {
      log('[addUserWithEmailAndPassword_FirebaseAuthException]: ${error.message.toString()}');
      throw error.domainError;
    }
  }

  @override
  Future<UserCredential> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      log('[]'); // TODO
      return result;
    } on FirebaseAuthException catch (error) {
      log('[]: $error'); // TODO
      throw error.domainError;
    }
  }

  @override
  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);

      log('[]'); // TODO
      return;
    } on FirebaseAuthException catch (error) {
      log('[]: $error'); // TODO
      throw error.domainError;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();

      log('[]'); // TODO
      return;
    } on FirebaseAuthException catch (error) {
      log('[]: $error'); // TODO
      throw error.domainError;
    }
  }
}
