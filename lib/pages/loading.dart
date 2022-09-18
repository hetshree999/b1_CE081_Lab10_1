import 'package:flutter/material.dart';
class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  void getData() async {
// below code is similar like to
// simulate network request for a username
// its just learning how flutter/dart response to Async
    String username = await Future.delayed(Duration(seconds: 4), () {
      return 'UNIVERSITY NAME : DDU';
    });
// print('in getData ...after future call....');
// the following code is depends on 1st one ..but what happened at here?
// suppose it is network simulation request to fetch out the bio-data of..
// user name that is received by 1st request.....

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTERENGINEERING STUDY';
    });
    print('$username -> $bio');
  }
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
    print('before getData call');
    getData();
    print('after getData call');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
// class Loading extends StatefulWidget {
//   @override
//   State<Loading> createState() => _LoadingState();
// }
// class _LoadingState extends State<Loading> {
//   void getData() async {
//     final response = await
//     get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//     print(response.body); // it response in JSON form out put ...we need MAP format..
// // print(response.body.userId); // this will not work. because its not MAP format..
// // TO CONVERT JSON TO MAP..WE NEED TO IMPORT convert package....
//     Map data = jsonDecode(response.body);
//     print(data);
//     print(data['title']);
//   }
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('LOADING SCREEN'),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// class Loading extends StatefulWidget {
// // const Loading({Key? key}) : super(key: key);
//   @override
//   State<Loading> createState() => _LoadingState();
// }
// class _LoadingState extends State<Loading> {
//   @override
//   Widget build(BuildContext context) {
//     void getData() async {
// // below code is similar like to
// // simulate network request for a username
// // its just learning how flutter/dart response to Async
//       String username = await Future.delayed(Duration(seconds: 4), () {
//         return 'UNIVERSITY NAME : DDU';
//       });
// // print('in getData ...after future call....');
// // the following code is depends on 1st one ..but what happened at here?
// // suppose it is network simulation request to fetch out the bio-data of..
// // user name that is received by 1st request.....
//
//       String bio = await Future.delayed(Duration(seconds: 2), () {
//         return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTE ENGINEERING STUDY';
//       });
//       print('$username -> $bio');
//     }
//     @override
//     void initState() {
//       super.initState();
//       print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
//       print('before getData call');
//       getData();
//       print('after getData call');
//     }
//     return Scaffold(
//       body: Text('LOADING SCREEN'),
//     );
//   }
// }