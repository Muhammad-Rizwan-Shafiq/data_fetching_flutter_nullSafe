import 'package:flutter/material.dart';
import 'package:json_parsing/network.dart';

class JsonParsingSimple extends StatefulWidget {
  @override
  _JsonParsingSimpleState createState() => _JsonParsingSimpleState();
}

class _JsonParsingSimpleState extends State<JsonParsingSimple> {
  Future? data;

  @override
  void initState() {
    // TODO: implement initState
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing Data"),
      ),
      body: FutureBuilder(
        future: getData(),
        // ignore: unnecessary_null_comparison
        //builder: (context,AsyncSnapshot snapshot)=> snapshot.hasData !=null  ?Text("${snapshot.data[0]['title']}")  : const CircularProgressIndicator(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return createListView(snapshot.data, context);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Future getData() async {
    var data;
    String url = "https://jsonplaceholder.typicode.com/posts";
    Network network = Network(url);
    data = network.fetchData();
    var result = await data;
    // print(result[0]['title']);
    return data;
  }

  Widget createListView(List data, BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
        itemBuilder: (context, index) {
      return ListTile(
        title: Text("${data[index]['title']}"),
      );
    });
  }
}
