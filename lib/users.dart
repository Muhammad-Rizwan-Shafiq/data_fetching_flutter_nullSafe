// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:json_parsing/users_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class Users extends StatefulWidget {
//   @override
//   _UsersState createState() => _UsersState();
// }
//
//
//
// class _UsersState extends State<Users> {
//
//   Future<List<UsersModel>> getUsers() async{
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     http.Response response = await http.get(url);
//     final jsondata=json.decode(response.body);
//
//     if(response.statusCode == 200){
//       List<UsersModel> users=[];
//        for(var u in jsondata){
//          UsersModel user= UsersModel(u["title"], u["id"]);
//          users.add(user);
//
//        }
//        print("haaye");
//        print(users.length );
//     }else{
//       print(response.statusCode);
//
//     }
//     return throw Exception("erorr");
//
//
//
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getUsers(),
//           builder: (context,AsyncSnapshot snapshot){
//              if(snapshot.hasData){
//               return ListView.builder(
//                 itemCount: snapshot.data.length,
//                   itemBuilder:(context, int index){
//                   return Text(snapshot.data[index].title);
//                     }
//               );
//             }else{
//                CircularProgressIndicator();
//                throw Exception("hello");
//              }
//           }
//       ),
//     );
//   }
// }
