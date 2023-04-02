import 'package:car_info3/phone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => profile_State();
}

class profile_State extends State<profile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Profile Page'),
          elevation: 0,
          // centerTitle: true,
        ),
        body: ListView(children: [
          Container(
            height: 170,
            width: 300,
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://lumiere-a.akamaihd.net/v1/images/open-uri20150608-27674-xjreyl_35624d29.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
            child:const Text("Name:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)
            ),
          ),
          Container(
              margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 40, 20),
              // height:,
              width: 20.0,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black54,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Enter your Name:",
                ),
              )
          ),
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
            child:const Text("Contact Number:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)
            ),
          ),
          Container(
              margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 40, 20),
              // height:,
              width: 20.0,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black54,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Enter your Number:",
                ),
              )
          ),
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
            child:const Text("Email Address:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)
            ),
          ),
          Container(
              margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 40, 20),
              // height:,
              width: 20.0,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black54,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Email ID",
                ),
              )
          ),
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(120, 10, 140, 20),
            child: ElevatedButton( onPressed: () => print('object'),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8),
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: const Text('Submit')
            ),
          ),
        ]));
  }
}
