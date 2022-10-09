// import 'package:flutter/material.dart';
//
// class nearestfr extends StatefulWidget {
//   @override
//   _nearestfr createState() => _nearestfr();
// }
//
// class _nearestfr extends State<nearestfr> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue[900],
//         title: Text('calling to nearest fire station'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'package:finalproject/pages/sendlocation.dart';




import "dart:collection";
import 'dart:math' ;


Map<String, String>mss = {
  'tel:01730336655': 'Fire Service & Civil Defence Station',
  'tel:01721750270': 'Chouddopai Fire Service and Civil Defence Station',
  'tel:01745230908': 'Fire Service And Civil Defence Station, Nowhata',
  'tel:01759263286': 'Rajshahi Uttar Fire Service & Civil Defence Station',
};

int w = 0;

String caldistan() {
  String nearesttele = '';
  double ulat = dlat;
  double ulog = dlon;


  final SplayTreeMap<String, Map<String,String>> st =
  SplayTreeMap<String, Map<String,String>>();


  st['Tel:01730336655'] = {'24.36936646690406' : '88.58959707759459'};
  st['Tel:0721750270'] = {'24.36835731761031' : '88.53480058062174'};
  st['Tel:01745230908'] = {'24.445748472633035':'88.61304674232733'};
  st['Tel:01759263286'] = {'24.38561109763931': '88.54821078962733'};
  // 0721750270
  //01730336655

  Map<String, String>mss = {
    'Tel:01730336655': 'Fire Service & Civil Defence Station',
    'Tel:0721750270': 'Chouddopai Fire Service and Civil Defence Station',
    'Tel:01745230908': 'Fire Service And Civil Defence Station, Nowhata',
    'Tel:01759263286': 'Rajshahi Uttar Fire Service & Civil Defence Station',
  };
  // 01730336655
  double mind = 99999999999999;

  int k = 0;
  // int w = 0;
  String pt = "";
  double mslat = 0;
  double mslog = 0;
  double dis = 0;
  int idis = 0;
  for (final String key in st.keys) {
//     print("$key : ${st[key]}");
//     if (k >= 4)break;
//     print (st.keys.elementAt(k));
    pt = st.keys.elementAt(k);
    // print (pt);
    // print (st [pt]!.keys.first);


    mslat = double.parse(st [pt]!.keys.first);
    mslog = double.parse(st [pt]!.values.first);
    dis = distance (ulat,ulog,mslat,mslog,'K');
    if (dis < mind)
    {
      w = k;
      mind = dis ;
      nearesttele = st.keys.elementAt(k);
//       cout << nearesttele << "\n";
//       print (nearesttele);
//       String pk = nearestfs.toString ();
//       ?nearestfs = mss [nearesttele];
    }
    k++;


  }
  // print (nearesttele);
  // print (mss [nearesttele]);
  return nearesttele;
}

double distance(lat1, lon1, lat2, lon2, unit) {
  double radlat1 = (3.1416 * lat1)/180.00;
  double radlat2 = (3.1416 * lat2)/180.00;
  double theta = lon1-lon2;
  double radtheta = (3.1614 * theta)/180.00;
  double dist = sin(radlat1) * sin(radlat2) + cos(radlat1) * cos(radlat2) * cos(radtheta);
  dist = acos(dist);
  dist = (dist * 180)/3.1416;
  dist = dist * 60 * 1.1515;
  if (unit=='K') { dist = dist * 1.609344; }
  if (unit=='N') { dist = dist * 0.8684; }
  return dist;
}


var entryList = mss.entries.toList();


String p = caldistan();
String q = entryList[w].value;
// = mss[p];
// void main() => runApp(const MyApp());

class nearestfr extends StatefulWidget {
  @override
  _nearestfr createState() => _nearestfr();
}

class _nearestfr extends State<nearestfr> {

  final TextEditingController _numberCtrl = TextEditingController();

  final TextEditingController _numberCtrl2 = TextEditingController();
  @override
  void initState() {
    super.initState();
    _numberCtrl.text = caldistan();
    _numberCtrl2.text = q;



  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Nearest Fire Station'),
          centerTitle: true,
        ),
        body: Column(
            // Text('Deliver features faster'),
            // Text('Craft beautiful UIs'),

            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                height: 300,
                child:Text(
                    _numberCtrl2.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _numberCtrl,
                decoration: const InputDecoration(labelText: "Phone Number",),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: const Text('Tap to call',
                style:TextStyle(fontSize: 20,),
              ),
              onPressed: () async {
                FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
              },
            )

          ],

        ),


      ),


    );
  }
}
