import 'package:flutter/material.dart';
import 'package:json_parsing/getData.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared extends StatefulWidget {
  @override
  _SharedState createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  @override

  store() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', 5);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Store Data"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("hello"),
            RaisedButton(onPressed: (){
              store();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  GetDataa()),
              );
            }),
          ],
        ),
      ),
    );
  }
}
