// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import './call.dart';

// class IndexPage extends StatefulWidget {
//    static const String routeNamed = 'index';
//   @override
//   State<StatefulWidget> createState() => IndexState();
// }

// class IndexState extends State<IndexPage> {
//   /// create a channelController to retrieve text value
//   final _channelController = TextEditingController();

//   /// if channel textField is validated to have error
//   bool _validateError = false;

//   @override
//   void dispose() {
//     // dispose input controller
//     _channelController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset : false,
//       appBar: AppBar(
//         backgroundColor: Colors.grey[700],
//         elevation: 900,
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(50),
//             child: Column(
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.only(left:35,right:35),
//                           child: TextField(
//                       controller: _channelController,
//                       decoration: InputDecoration(
//                           errorText:
//                               _validateError ? 'Channel name is mandatory' : null,
//                           border: UnderlineInputBorder(
//                             borderSide: BorderSide(width: 1),
//                           ),
//                           hintText: 'Channel Name',
//                       ),
//                     ),
//                         ))
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.only(top:15,left:80,right:80),
//                           child: RaisedButton(
//                             onPressed: onJoin,
//                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
//                             elevation: 100,
//                             color: Colors.pinkAccent,
//                             textColor: Colors.white,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }


// }
