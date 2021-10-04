import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:json_parsing/post_model.dart';
import 'dart:convert';

class MappedData extends StatefulWidget {
  @override
  _MappedDataState createState() => _MappedDataState();
}

class _MappedDataState extends State<MappedData> {
  @override
  Future <PostList>? data;

  Future<PostList>? getData()async{
    String url = "https://jsonplaceholder.typicode.com/posts";
    Response response= await get(Uri.parse(url));

    if(response.statusCode == 200){
      // print(json.decode(response.body));
      var parsedData=PostList.fromJson(json.decode(response.body));
      print(parsedData.posts);
      return parsedData ;

    }else{
      throw Exception("not getting data");
    }



  }

  void initState() {
    // TODO: implement initState
    data = getData();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapped Data"),
      ),
      body: FutureBuilder(
        future: getData(),

          builder: (context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context,index){
                return ListTile(
                  title: Text(snapshot.data),
                );
              }

              );
            }else{
              return CircularProgressIndicator();
            }
          }
      ),
    );
  }
}
