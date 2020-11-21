import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stud_eeze_app/model/user.dart';
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
      main_user = await _firebaseAuth.currentUser();
      if ( main_user != null)
        return  main_user;
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

  Future<User> getData() async {
    String uid = await preferenceService.getUID();

    User k;
    QuerySnapshot querySnapshot =
        await _firestore.collection('users').getDocuments();
    querySnapshot.documents.forEach((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.documentID != null &&
          documentSnapshot.documentID == uid) {
        k = User.fromJson(jsonDecode(jsonEncode(documentSnapshot.data)));
      }
    });
    if (k == null) {
      print(k);
      return null;
    }
    return k;
  }

  Future<User> addData(String className, String iname, int k) async {
    String role;
    if (k == 1) {
      role = "stu";
    } else {
      role = "te";
    }
    String uid = await preferenceService.getUID();

    print(main_user.phoneNumber);
    print(className);
    await _firestore.collection('users').document(uid).setData({
      "className": className,
      "contactNumber": main_user.phoneNumber,
      "email": main_user.email,
      "image": main_user.photoUrl,
      "iname": iname,
      "name": main_user.displayName,
      "role": role
    });
    DocumentSnapshot documentSnapshot =
        await _firestore.collection('users').document(uid).get();
     user = User.fromJson(documentSnapshot.data);
    print(user.name);
    print(user.email);
    return user;
  }
}