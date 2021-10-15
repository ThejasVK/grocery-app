import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/main_drawer.dart';

class VisionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff84CC83),
        elevation: 0,
        title: Text('Mission and Vision'),
        /*leading: IconButton(
          icon: Icon(FontAwesomeIcons.gripLines),
          onPressed: () {},
          color: Colors.black,
          tooltip: 'Menu',
        ),*/
        //actions: _buildActions(),
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
                                height: 80,
                              ),
                              Text("VISION", style: GoogleFonts.varelaRound(
                                fontSize: 75,
                                fontWeight: FontWeight.w600,
                              ),),
                              SizedBox(
                                height: 40,
                              ),
                              Text('''
Our vision is to provide all the requirements 
to the farmers from the scratch that is required for 
the development of crops and to provide maximum yield 
with a reasonable price and to eliminate the mediators 
between the farmers and the consumers and to bring a 
 in farming with latest technologies.''',maxLines: 20 ,style: GoogleFonts.varelaRound(
                                fontSize: 50,
                                fontWeight: FontWeight.w600,

                              ), textAlign: TextAlign.center,),
                              SizedBox(
                                height: 80,
                              ),
                              Text("MISSION", style: GoogleFonts.varelaRound(
                                fontSize: 75,
                                fontWeight: FontWeight.w600,
                              ), ),
                              SizedBox(
                                height: 40,
                              ),
                              Text('''Our mission is to provide healthy 
and fresh daily life commodities in a 
very reasonable price and to provide door 
step delivery to the consumers and to obtain 
satisfaction with our commodities.''',maxLines: 20 , style: GoogleFonts.varelaRound(
                                fontSize: 50,
                                fontWeight: FontWeight.w600,

                              ),  textAlign: TextAlign.center,),
                              SizedBox(
                                height: 40,
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

      Container(
      padding: EdgeInsets.only(top: 5),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.only(top: 30, bottom: 10),
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
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 500,
                  child: FittedBox(
                    child: Column(
                      children: <Widget>[
                        Text('''
Vision

Our vision is to provide all the requirements 
to the farmers from the scratch that is required for 
the development of crops and to provide maximum yield 
with a reasonable price and to eliminate the mediators 
between the farmers and the consumers and to bring a 
 in farming with latest technologies.''',maxLines: 20 , style: TextStyle(fontSize: 50, color: Colors.black), textAlign: TextAlign.left,),
                        SizedBox(
                          height: 40,
                        ),
                        Text('''Mission- Our mission is to provide healthy 
and fresh daily life commodities in a 
very reasonable price and to provide door 
step delivery to the consumers and to obtain 
satisfaction with our commodities.''',maxLines: 20 , style: TextStyle(fontSize: 50, color: Colors.black),),
                        SizedBox(
                          height: 40,
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

      );


  }
}
