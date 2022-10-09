// import 'package:flutter/material.dart';
//
// class call999 extends StatefulWidget {
//   @override
//   _call999 createState() => _call999();
// }
//
// class _call999 extends State<call999> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: Text('call999'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// class call999 extends StatefulWidget {
//   @override
//   _call999 createState() => _call999();
// }
//
// class _call999 extends State<call999> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: Text('call999'),
//         centerTitle: true,
//         elevation: 0,
//
//       ),
//     );
//   }
// }



//
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// _makingPhoneCall() async {
//   var url = Uri.parse("tel:999");
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
//
// class call999 extends StatefulWidget {
//   @override
//   _call999 createState() => _call999();
// }
//
// class _call999 extends State<call999> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Geeks for Geeks'),
//       //   backgroundColor: Colors.green,
//       // ), // AppBar
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Container(
//                 height: 250.0,
//               ), //Container
//               const Text(
//                 'For call 999 press Here',
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   color: Colors.green,
//                   fontWeight: FontWeight.bold,
//                 ), //TextStyle
//               ), //Text
//               // Container(
//               //   height: 20.0,
//               // ),
//               // const Text(
//               //   'For further Updates',
//               //   style: TextStyle(
//               //     fontSize: 20.0,
//               //     color: Colors.green,
//               //     fontWeight: FontWeight.bold,
//               //   ),
//               // ),
//               // Container(
//               //   height: 20.0,
//               // ),
//               ElevatedButton(
//                 onPressed: _makingPhoneCall,
//                 style: ButtonStyle(
//                   padding:
//                   MaterialStateProperty.all(const EdgeInsets.all(5.0)),
//                   textStyle: MaterialStateProperty.all(
//                     const TextStyle(color: Colors.black),
//                   ),
//                 ),
//                 child: const Text('Here'),
//               ), // ElevatedButton
//
//
//               // DEPRECATED
//               // RaisedButton(
//               //   onPressed: _makingPhoneCall,
//               //   child: Text('Call'),
//               //   textColor: Colors.black,
//               //   padding: const EdgeInsets.all(5.0),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//

// use if for later nearest call api


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final TextEditingController _numberCtrl = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     _numberCtrl.text = "085921191121";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: _numberCtrl,
//                 decoration: const InputDecoration(labelText: "Phone Number"),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             ElevatedButton(
//               child: const Text("Test Call"),
//               onPressed: () async {
//                 FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



















