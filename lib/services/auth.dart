import 'package:firebase_auth/firebase_auth.dart';

class Authenication {
  FirebaseAuth connection = FirebaseAuth.instance;

  Stream<User?> get authOnStateChanges => connection.authStateChanges();

  User? get currentUser => connection.currentUser;

  Future<String?> createUserWithEmailandPassword(
    //future allows for future strings string:words/letters
    String email,
    String password,
    String name,
  ) async {
    //async allows everything to run at once
    try {
      final UserCredential credential = await connection
          .createUserWithEmailAndPassword(email: email, password: password);
          credential.user?.updateDisplayName(name);
    } on FirebaseAuthException catch (error) {
      print(error.code);
      return error.message;
    }
    return null;
  }

  Future<String?> loginUserWithEmailandPassword(
    String email,
    String password,
  ) async {
    try {
      final UserCredential credential = await connection
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      print(error.code);
      return error.message;
    }
  }

  Future signOut() async {
    try {
      await connection.signOut();
       print('logging out');
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
