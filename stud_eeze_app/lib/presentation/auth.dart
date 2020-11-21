import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stud_eeze_app/model/store_observer.dart';
import 'package:stud_eeze_app/presentation/auth2.dart';
import 'package:stud_eeze_app/presentation/login_screen.dart';
import 'package:stud_eeze_app/store/user_store.dart';

class Auth extends StatefulWidget {
  static const String routeNamed = 'auth';
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      check();
    });
  }

  check() async {
    await Provider.of<UserStore>(context).checking();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: StoreObserver<UserStore>(
        builder: (UserStore store, BuildContext context) {
      if (store.check) return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ));
      return (store.isLoggedIn? Auth2() :LoginPage());
    })));
  }
}
