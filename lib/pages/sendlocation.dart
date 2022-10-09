import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:location/location.dart';
String temp = "";
String lat ="";
String lon = "";
double dlat = 0;
double dlon = 0;
double diff = 0;
Location loca = new Location();
late bool _serviceEnabled ;
late PermissionStatus _permissionGrandted;
late LocationData _locationData;
Future<dynamic> getLocation () async{
  PermissionStatus permission  =  await loca.hasPermission();


  if(permission==PermissionStatus.granted){
    return loca.getLocation();
  }else{
    loca.requestPermission();
  }
}


class sendlocation extends StatefulWidget {
  @override
  _sendlocation createState() => _sendlocation();
}

class _sendlocation extends State<sendlocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('sendlocation'),
        centerTitle: true,
        elevation: 0,
      ),
        body: const Center(child: Text('Press the button below to send location')),
    floatingActionButton: FloatingActionButton(


      onPressed: (){


        getLocation().then((value){


          print (value);

          temp = value.toString();

          // print("New String: ${temp.substring(2,6)}");
          lat = temp.substring(18,27);
          lon = temp.substring(35,44);
          dlat = double.parse(lat);
          dlon = double.parse(lon);


        });

        DatabaseReference _testRef = FirebaseDatabase.instance.reference().child("lat and lon");
        _testRef.set(temp);


    },
    )
    );
  }

  // getLocation() {}
}