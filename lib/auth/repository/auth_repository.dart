import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failures.dart';

@lazySingleton
class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<Either<Failure, dynamic>> addUser({
    required String name,
    required String email,
  }) async {
    try {
      final CollectionReference users = firestore.collection('users');

      // ignore: unused_local_variable
      final result = await users.add({
        'name': name, // John Doe
        'email': email, // Stokes and Sons
      });

      return const Right(true);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }

  Future<Either<Failure, UserCredential?>> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } catch (e) {
      debugPrint('Error: $e');
      String message = '';
      if (e.toString().contains('email-already-in-use')) {
        message = 'Email is already used';
      }
      return Left(RemoteFailure(message: message));
    }
  }

  Future<Either<Failure, UserCredential?>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } catch (e) {
      debugPrint('Error: $e');
      return const Left(RemoteFailure(message: 'User is not found'));
    }
  }

  void signOut() async {
    await _auth.signOut();
  }
}
