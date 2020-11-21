import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stud_eeze_app/presentation/custom/custom_button.dart';
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';
import 'package:stud_eeze_app/src/pages/call.dart';
import 'package:stud_eeze_app/utils/global.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> onJoin() async {
    await _handleCameraAndMic();
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPage(
          channelName: user.iname + user.className,
        ),
      ),
    );
  }

  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('class',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500)),
                      Text(user.className,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Institution',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500)),
                      Text(user.iname,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(32),
              ),
              Text('Class Teacher',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              Builder(
                builder: (context) {
                  // User teacher;
                  // for (int i = 0; i < all.length; i++) {
                  //   if (all[i].className == user.className &&
                  //       all[i].iname == user.iname &&
                  //       user.role == 'te') {
                  //     teacher = all[i];
                  //   }
                  // }
                  return Container();
                },
              ),
              Text('Class Student ',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              Builder(

                
                builder: (context) {
                  return Container();
                },
              ),
              SizedBox(
                height: ScreenUtil.instance.setHeight(81),
              ),
              CustomButton(
                labelText: 'doubt Session',
                isLoading: false,
                postIcon: Icons.arrow_forward,
                visiblepostIcon: true,
                onTap: onJoin,
              )
            ],
          ),
        ),
      )),
    );
  }
}
