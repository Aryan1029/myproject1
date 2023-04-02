//home_page
import 'dart:core';
import 'package:car_info3/model/search_model.dart';
import 'package:car_info3/profile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'bikes.dart';
import 'cars.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // static List<search_model>vehicle_list=[
  //   search_model("MH 02 FT 1156", "Two Wheeler", "Honda Highness CB 350", DateTime.parse('1969-07-20 20:18:04Z'))
  // ];
  // List<search_model> display_list= List.from(vehicle_list);
  // void updateList(String value){
  //   //This is the function that will filter our list
  //
  // }
  int _selectedIndex = 0;
  int index = 0;

  final screens = [
    const HomePage(),
    const Cars(),
    const Bikes(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // static const List<Widget> _pages = <Widget>[];

  @override
  Widget build(BuildContext context) {
    final navigationKey = GlobalKey<CurvedNavigationBarState>();
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(
        Icons.directions_car,
        size: 30,
      ),
      const Icon(
        Icons.motorcycle_sharp,
        size: 30,
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Home'),
        elevation: 0,
        // centerTitle: true,
      ),
      drawer: Drawer(
        // backgroundColor: Colors.black,
        //backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.black),
              accountName: const Text("Aniket Vohra"),
              accountEmail: const Text("aniketvohra69@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: GestureDetector(
                  child: const Text(
                    "A",
                    style: TextStyle(fontSize: 40.0, color: Colors.black),
                  ),
                  onTap: () => Navigator.pushNamed(context, "profile"),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pushNamed(context, 'settings');
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text("Contact Us"),
              onTap: () {
                Navigator.pushNamed(context, 'contact_us');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout_sharp),
              title: const Text("Log out"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 20.0,
          ),
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage("https://lumiere-a.akamaihd.net/v1/images/open-uri20150608-27674-xjreyl_35624d29.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: InkWell(
                //   child: Card(
                //     elevation: 0.0,
                //     child: Image.network(
                //         "https://lumiere-a.akamaihd.net/v1/images/open-uri20150608-27674-xjreyl_35624d29.jpeg"),
                //   ),
                // ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                child: InkWell(
                  child: Card(
                    elevation: 0.0,
                    child: Image.network(
                        "https://th.bing.com/th/id/OIP.BOOjslKUTyZKoWreOnnMLAHaGI?pid=ImgDet&rs=1"),
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(8.0),
                //   image: DecorationImage(
                //     image: NetworkImage("https://th.bing.com/th/id/OIP.BOOjslKUTyZKoWreOnnMLAHaGI?pid=ImgDet&rs=1"),
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),

              //3rd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://blogmedia.dealerfire.com/wp-content/uploads/sites/673/2017/04/2017-Lamborghini-Aventador-Coupe-Grigio-Titans_o.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.5d7cf6286815fe55c43bbb242a5b5dac?rik=qh9BQe6FkQrMzw&riu=http%3a%2f%2fwww.extravaganzi.com%2fwp-content%2fuploads%2f2010%2f08%2fBentley-Continental-GTC-Speed-80-11-Edition-17.jpg&ehk=uT087MxrXsaExikGSMZWzdNvxAr425VKHoYIw0%2fkKgw%3d&risl=&pid=ImgRaw&r=0"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://1.bp.blogspot.com/-YSbmBX3C99Q/U6p2WOYXZxI/AAAAAAAAFxo/fXLfgqAkEJY/s1600/ktm-bikes-india.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(95, 20, 0, 0),
            child:const Text("Search for a Car/Bike ⬇",
               style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 20),
            // height:,
            width: 20.0,
              child:TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black54,
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "eg: MH 02 DB 1938",
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor:Colors.white,
                ),
              )
          ),
          SizedBox(height: 20.0,),
          // Expanded(
          //   // child: ListView.builder(
          //   //   itemCount: display_list.length,
          //   //   itemBuilder: (context,index)=>ListTile(
          //   //     title:Text(display_list[index].vehicle_name!, style: TextStyle(color:Colors.deepPurple,fontWeight: FontWeight.bold ),)
          //   //   ),
          //
          //   ),
        ],
      ),
    );
  }
}
