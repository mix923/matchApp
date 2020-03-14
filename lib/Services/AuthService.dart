

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth  _authService = FirebaseAuth.instance;

  Future<String> signUp({String email,String password}) async {
   AuthResult result = await _authService.createUserWithEmailAndPassword(email: email, password: password);
   FirebaseUser user = result.user;
   return user.uid;  
  }

  Future<String> signIn({String email,String password}) async {
   AuthResult result = await _authService.signInWithEmailAndPassword(email: email, password: password);
   FirebaseUser user = result.user;
   return user.uid;  
  }

  Future<String> signInAnonymously() async {
   AuthResult result = await _authService.signInAnonymously();
   FirebaseUser user = result.user;
   return user.uid;  
  }

  Future<void> logout() async{
    return await _authService.signOut();
  }

  Stream<FirebaseUser> changeUser()
  {
    return _authService.onAuthStateChanged;
  }

}