import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merch_mark/screens/auth/login.dart';
import 'package:merch_mark/screens/auth/signup.dart';
import 'package:merch_mark/screens/Profile.dart';
import 'package:merch_mark/screens/home.dart';
import 'package:merch_mark/screens/welcome.dart';
import 'package:merch_mark/services/auth.dart';
import 'package:merch_mark/utils/models/stock.dart';
import 'package:merch_mark/utils/providers/auth_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  testStock() async {}
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  DatabaseReference databaseRef = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AuthWrapper());
  }
}

class AuthWrapper extends StatefulWidget {
  AuthWrapper({Key? key}) : super(key: key);

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  final Authenication _auth = Authenication();
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        final response = ref.watch(authStateStreamProvider);
        return response.when(
            data: (value) {
              if (value != null) {
                return HomePage();
              }
              return LoginPage();
            },
            error: (__, ___) {
              return const Scaffold(
                  body: Center(
                      child: Text(
                'We are having trouble connecting you.',
              )));
            },
            loading: () => const CircularProgressIndicator());
      }),
    );
  }
}
