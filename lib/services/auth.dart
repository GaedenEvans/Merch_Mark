import 'package:firebase_auth/firebase_auth.dart';

class Authenication {
  FirebaseAuth connection = FirebaseAuth.instance;

  Future<String?> createUserWithEmailandPassword(
    String email,
    String name,
    String password,
  ) async {
    try {
      final UserCredential credential = await connection
          .createUserWithEmailAndPassword(email: email, password: password);

      await credential.user?.updateDisplayName(name);
    } on FirebaseAuthException catch (error) {
      print(error.code);
      return error.message;
    }
  }

  loginUserWithEmailandPassword(
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
}

Future<String?> signoutUser() async {
  try {
    return await signoutUser();
  } on FirebaseAuthException catch (error) {
    return error.message;
  }
}
