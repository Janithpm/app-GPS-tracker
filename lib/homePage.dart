import 'package:clientApp/iotMap.dart';
import 'package:clientApp/noticeBorad.dart';
import 'package:clientApp/qrScanner.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String uid = "uid12345";
  TextEditingController uidController = new TextEditingController();

  void checkDeviceId() {
    FirebaseFirestore.instance
        .collection('gps_devices')
        .doc(uidController.text)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        String tempdid = documentSnapshot.data()['deviceId'];
        // print(tempdid);
        if (tempdid != "" && tempdid.length == 6) {
          // did = tempdid;
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => IotMap(tempdid)));
        }
      } else {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => QRScanner(uidController.text)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    final mq = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: uidController,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              child: MaterialButton(
                  minWidth: mq.size.width / 1.2,
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Text(
                    "Map",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    checkDeviceId();
                  }),
            ),
            SizedBox(
              height: mq.size.height / 30,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              child: MaterialButton(
                  minWidth: mq.size.width / 1.2,
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Text(
                    "NoticeBoard",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w900),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => NoticeBorad()));
                  }),
            ),
            SizedBox(
              height: mq.size.height / 30,
            ),
          ],
        ),
      ),
    );
  }
}
