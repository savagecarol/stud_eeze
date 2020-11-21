import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:stud_eeze_app/model/store_observer.dart';
import 'package:stud_eeze_app/presentation/data.dart';

import 'package:stud_eeze_app/presentation/splashpage.dart';
import 'package:stud_eeze_app/store/user_store.dart';
import 'package:stud_eeze_app/utils/global.dart';

class Auth2 extends StatefulWidget {
  static const String routeNamed = 'auth2';
  @override
  _Auth2State createState() => _Auth2State();
}

class _Auth2State extends State<Auth2> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      check();
    });
  }

  check() async {
    if(preferenceService.getUID()!=null)
    await Provider.of<UserStore>(context).getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: StoreObserver<UserStore>(
        builder: (UserStore store, BuildContext context) {
      if (store.isLoading) return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ));
      return (store.isData == false ? Data() :SplashPage());
    })));
  }
}
