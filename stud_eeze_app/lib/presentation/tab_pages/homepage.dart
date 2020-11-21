import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stud_eeze_app/presentation/custom/custom_button.dart';
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';
// import 'package:stud_eeze_app/lib/src/pages/call.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _channelController = TextEditingController();

  /// if channel textField is validated to have error
  bool _validateError = false;

  @override
  void dispose() {
    // dispose input controller
    _channelController.dispose();
    super.dispose();
  }
  
  
  
  Future<void> onJoin() async {
    // update input validation
    setState(() {
      _channelController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (_channelController.text.isNotEmpty) {
      // await for camera and mic permissions before pushing video page
      await _handleCameraAndMic();
      // push video page with given channel name
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallPage(
            channelName: _channelController.text,
          ),
        ),
      );
    }
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
              Text('class',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              SizedBox(
                height: ScreenUtil.instance.setHeight(81),
              ),
              CustomButton(
                labelText: 'doubt Session',
                isLoading: false,
                postIcon: Icons.arrow_forward,
                visiblepostIcon: true,
                onTap: () {
                  Navigator.pushNamed(context, IndexPage.routeNamed);
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
