import 'package:flutter/material.dart';
import 'package:grocery/about.dart';
import 'package:grocery/vision.dart';
import 'package:grocery/homepage.dart';
//

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Color(0xff84CC83),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/logo.png'),)
                    ),

                  ),
                  Text('Krishi Abhikya', style: TextStyle(fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home', style: TextStyle(fontSize: 18),),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About us', style: TextStyle(fontSize: 18),),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AboutUs()));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_upward),
            title: Text('Mission and Vision', style: TextStyle(fontSize: 18),),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VisionPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings', style: TextStyle(fontSize: 18),),
          )
        ],
      ),
    );
  }
}
