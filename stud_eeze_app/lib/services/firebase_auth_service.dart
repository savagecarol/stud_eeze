import 'dart:async';
import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stud_eeze_app/utils/global.dart';


class FirebaseAuthService {
  FirebaseAuthService._();

  static final FirebaseAuthService _instance = FirebaseAuthService._();

  factory FirebaseAuthService.getInstance() => _instance;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();
  Firestore _firestore = Firestore.instance;

  Future<FirebaseUser> handleSignIn() async {
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final AuthResult authResult =
        await _firebaseAuth.signInWithCredential(credential);
    main_user = authResult.user;
    print("signed in " + main_user.displayName);
    return main_user;
  }

  Future<FirebaseUser> getCurrentuser() async {
    try {
      FirebaseUser user = await _firebaseAuth.currentUser();
      if (user != null)
        return user;
      else {
        return null;
      }
    } catch (e) {
      print("error");
      print(e);
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut();
      await preferenceService.removeUID();
      print("User Signed out");
    } catch (e) {
      print("error in signout");
      print(e);
    }
  }

  // Future<User> getData() async {
  //   String uid = await preferenceService.getUID();
  //   DocumentSnapshot documentSnapshot =
  //       await _firestore.collection('users').document(uid).get();
  //   if (documentSnapshot.data == null) {
  //     await _firestore.collection('users').document(uid).setData({
  //       "contactNumber": main_user.phoneNumber,
  //       "email": main_user.email,
  //       "image": main_user.photoUrl,
  //       "name": main_user.displayName
  //     });
  //     DocumentSnapshot documentSnapshot =
  //         await _firestore.collection('users').document(uid).get();
  //     User user = User.fromJson(documentSnapshot.data);
  //     print(user.name);
  //     print(user.email);
  //     return user;
  //   }
  //   User user = User.fromJson(documentSnapshot.data);
  //   return user;
  // }



}
