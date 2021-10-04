import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetDataa extends StatefulWidget {
  @override
  _GetDataaState createState() => _GetDataaState();
}

class _GetDataaState extends State<GetDataa> {

 dynamic counter=2;


 getData() async{
   final prefs = await SharedPreferences.getInstance();

// Try reading data from the counter key. If it doesn't exist, return 0.
   setState(() {
      counter = prefs.getInt('counter') ?? 0;
   });
   print(counter);
 }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Store Data"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("hello ${counter}"),

          ],
        ),
      ),
    );
  }
}
