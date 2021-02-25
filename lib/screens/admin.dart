import 'package:flutter/material.dart';
import 'package:admin/admin.dart' as ad;
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ad.Admin.enable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              // ad.Admin.disableCamera(false);

              ad.Admin.disableCamera(false);
              showToast('enabled');
            },
            child: Text('Enable Camera'),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              // ad.Admin.disableCamera(false);

              ad.Admin.disableCamera(true);
              showToast('disabled');
            },
            child: Text('disable Camera'),
          ),
        ],
      ),
    ));
  }

  showToast(msg) {
    Fluttertoast.showToast(msg: 'Camera has been $msg');
  }
}
