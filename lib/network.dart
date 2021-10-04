import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Network{
  final  url;
  Network(this.url);

  Future fetchData()async{
    Response response= await get(Uri.parse(url));

    if(response.statusCode == 200){
     // print(json.decode(response.body));
      return json.decode(response.body);
    }else{
      print(response.statusCode);
    }
  }
}