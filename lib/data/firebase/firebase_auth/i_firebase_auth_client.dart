import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuthClient {
  User? get currentUser;

  Stream<User?> authStateChanges();

  Future<UserCredential> addUserWithEmailAndPassword(
      {required String email, required String password});

  Future<UserCredential> signInWithEmailAndPassword(
      {required String email, required String password});

  Future<void> sendPasswordResetEmail({required String email});

  Future<void> signOut();
}
