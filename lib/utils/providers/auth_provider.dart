import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merch_mark/services/auth.dart';

final authStateChangesProvider = Provider((ref) => Authenication());
final authStateStreamProvider = StreamProvider((ref) {
 return ref.watch(authStateChangesProvider).authOnStateChanges;
});