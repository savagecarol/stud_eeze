import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stud_eeze_app/presentation/auth.dart';
import 'package:stud_eeze_app/presentation/custom/custom_button.dart';
import 'package:stud_eeze_app/presentation/custom/custom_logo.dart';
import 'package:stud_eeze_app/presentation/custom/customprofiletextcard.dart';
import 'package:stud_eeze_app/utils/global.dart';
import 'package:stud_eeze_app/utils/strings.dart';

class ProfilePage extends StatefulWidget {
  static const String routeNamed = 'ProfilePage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              SizedBox(
                height: ScreenUtil.instance.setHeight(48),
              ),
              Text((user.role == 'stu') ? 'Student' : 'Teacher',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              SizedBox(height: ScreenUtil.instance.setHeight(32)),
              Center(
                  child: CustomLogo(
                url: (user.image == null)
                    ? StringValues.DEFAULT_USER_IMAGE
                    : user.image,
              )),
              SizedBox(height: ScreenUtil.instance.setHeight(32)),
              Text('Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomProfileTextCard(
                labelText: user.name ?? '',
                sizelabelText: 20,
                labelTextWeight: FontWeight.w300,
              ),
              Text('Phone Number',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomProfileTextCard(
                labelText: user.contactNumber ?? '',
                sizelabelText: 20,
                labelTextWeight: FontWeight.w300,
              ),
              Text('Email',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomProfileTextCard(
                labelText: user.email ?? '',
                sizelabelText: 20,
                labelTextWeight: FontWeight.w300,
              ),
              Text('Class Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomProfileTextCard(
                labelText: user.className ?? '',
                sizelabelText: 20,
                labelTextWeight: FontWeight.w300,
              ),
              Text('Institution Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomProfileTextCard(
                labelText: user.iname ?? '',
                sizelabelText: 20,
                labelTextWeight: FontWeight.w300,
              ),
              CustomButton(
                labelText: 'LogOut',
                postIcon: Icons.arrow_forward,
                visiblepostIcon: true,
                onTap: () async {
                  await firebaseAuthService.signOut();
                  Navigator.pushNamed(context, Auth.routeNamed);
                },
              )
            ])),
      ),
    )));
  }
}
