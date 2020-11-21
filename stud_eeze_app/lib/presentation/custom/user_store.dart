import 'package:firebase_auth/firebase_auth.dart';

import 'package:mobx/mobx.dart';
import 'package:stud_eeze_app/utils/global.dart';
part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  @observable
  bool isLoading = false;

  @observable
  bool isLoggedIn = false;

  @observable
  bool isCodeSent = false;

  @observable
  bool isCodeAutoReceived = false;

  // @observable
  // User loggedInUser;

  @observable
  bool check = false;

  @observable
  String verfId;

  @observable
  bool isCheckUser = false;

  @observable
  bool isData = true;

  // @action
  // getData() async {
  //   isData = false;
  //   if(loggedInUser == null)
  //        loggedInUser = await firebaseAuthService.getData();
  //   isData = true;
  // }

  @action
  logIn() async {
    try {
      isLoading = true;
      FirebaseUser user = await firebaseAuthService.handleSignIn();
      print(user.uid);
      if (user == null) {
        isLoading = false;
      } else {

        await preferenceService.setUID(user.uid);
        isLoading = false;
      }
    } catch (e) {
      print(e);
      isLoading = false;
      throw e;
    }
  }

  @action
  checking() async {
    check = true;
    FirebaseUser user = await firebaseAuthService.getCurrentuser();
    if (user == null) {
      check = false;
      isLoggedIn = false;
    } else {
      {
        check = false;
        isLoggedIn = true;
        print(user.uid);
        await preferenceService.setUID(user.uid);
      }
    }
  }

  @action
  logout() async {
    isLoading = true;
    firebaseAuthService.signOut();
    isLoggedIn = false;
    // loggedInUser = null;
    await preferenceService.removeUID();
    isLoading = false;
  }
}
