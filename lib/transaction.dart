import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/main_drawer.dart';


class TranPage extends StatefulWidget {
  @override
  _TranState createState() => _TranState();
//_MainPageState createState() => _HomePageState();
}

class _TranState extends State<TranPage> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff84CC83),
        elevation: 0,
        title: Text('About us'),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              //Center(child: Image.asset('assets/images/banner.png')),
              Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.green,
                      margin: EdgeInsets.only( bottom: 10),
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

                    Container(
                      width: double.infinity,
                      //height: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 350,
                            child: FittedBox(
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 150,
                                    ),
                                    Text("TRANSACTION SUCCESSFUL", style: GoogleFonts.varela(
                                      fontSize: 75,
                                      fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                )

                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),

              )
            ],
          ),
        ),

      ),
      //bottomNavigationBar: _buildBottomNavigationBar(),
    );

  }
}