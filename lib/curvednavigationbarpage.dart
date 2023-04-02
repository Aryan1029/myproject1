import 'package:car_info3/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:car_info3/cars.dart';
import 'package:car_info3/bikes.dart';

class CurvedNavigationBarPage extends StatefulWidget {
  const CurvedNavigationBarPage({Key? key}) : super(key: key);

  final String title = "";

  @override
  State<CurvedNavigationBarPage> createState() => _CurvedNavigationBarPageState();
}

class _CurvedNavigationBarPageState extends State<CurvedNavigationBarPage> {

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screens = [
    const HomePage(),
    const Cars(),
    const Bikes(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.directions_car, size: 30,),
      const Icon(Icons.motorcycle_sharp, size: 30,)
    ];
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text(widget.title),
      //   elevation: 0,
      //   // centerTitle: true,
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const UserAccountsDrawerHeader(
      //         decoration: BoxDecoration(color: Colors.black),
      //         accountName: Text("Aniket Vohra"),
      //         accountEmail: Text("aniketvohra69@gmail.com"),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundColor: Colors.white,
      //           child: Text(
      //             "A",
      //             style: TextStyle(fontSize: 40.0, color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text("Home"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.settings),
      //         title: const Text("Settings"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.contacts),
      //         title: const Text("Contact Us"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      extendBody: true,
      // backgroundColor: const Color.fromRGBO(65, 105, 225, 10),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          buttonBackgroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          // color: const Color.fromRGBO(65, 105, 225, 10),
          color: Colors.black,
          height: 55,
          animationCurve: Curves.bounceInOut,
          animationDuration: const Duration(milliseconds: 300),
          items: items,
          index: index,

          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}