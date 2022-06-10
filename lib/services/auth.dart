import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
  'email',
  'https://www.googleapis.com/auth/contact.readonly',
]);

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(
    this._firebaseAuth,
  );

  Future<bool> signIn({required String email, required String password}) async {
    // return false;
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message ?? 'unknow error');
      return false;
    }
  }

  Future<bool> signInGoogle(
      {required String email, required String password}) async {
    // return false;
    try {
      await _googleSignIn.signIn();
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message ?? 'unknow error');
      return false;
    }
  }

  Future<bool> signUp({required String email, required String password}) async {
    return false;
  }
}
