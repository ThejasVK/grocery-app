

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:grocery/widgets/top_product_tile.dart';
import 'package:grocery/main_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery/paytm.dart';
import 'package:grocery/razor.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff84CC83),
          elevation: 0,
          title: Text('Cart'),
          /*leading: IconButton(
          icon: Icon(FontAwesomeIcons.gripLines),
          onPressed: () {},
          color: Colors.black,
          tooltip: 'Menu',
        ),*/
          actions: _buildActions(),
        ),
        drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: <Widget>[
              //Center(child: Image.asset('assets/images/banner.png')),

              _buildTopProductsList(),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: FlatButton(
                  child: Text('Payment', style: TextStyle(fontSize: 20.0),),
                  color: Color(0xff84CC83),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Razor()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildActions() =>
      <Widget>[
        IconButton(
          icon: Icon(
            FontAwesomeIcons.shoppingBasket,
            size: 20,
          ),
          onPressed: () {},
          color: Colors.white,
          tooltip: 'Cart',
        )
      ];
}




Widget _buildTopProductsList() {
  List topProductList = [
    TopProductTile(
      assetPath: 'assets/images/kiwi.png',
      color: Color(0xffDFECF8),
      price: '\₹2.25',
      title: 'Kiwi Fruit',
    ),
    TopProductTile(
      color: Color(0xffF4DEF8),
      assetPath: 'assets/images/summer.png',
      title: 'Watermelon',
      price: '\₹1.50',
    ),
    TopProductTile(
      color: Color(0xffFFF2C5),
      assetPath: 'assets/images/strawberry.png',
      title: 'Strawberry',
      price: '\₹3.50',
    ),
    TopProductTile(
      color: Color(0xffDFECF8),
      assetPath: 'assets/images/strawberry.png',
      title: 'Strawberry',
      price: '\₹3.50',
    ),
    TopProductTile(
      color: Color(0xffF4DEF8),
      assetPath: 'assets/images/strawberry.png',
      title: 'Strawberry',
      price: '\₹3.50',
    ),
    TopProductTile(
      color: Color(0xffFFF2C5),
      assetPath: 'assets/images/strawberry.png',
      title: 'Strawberry',
      price: '\₹3.50',
    ),
    TopProductTile(
      color: Color(0xffDFECF8),
      assetPath: 'assets/images/strawberry.png',
      title: 'Strawberry',
      price: '\₹3.50',
    ),
  ];

  return Column(
    children: <Widget>[
      Container(
        height: 600,

        child: ListView.separated(
          padding: EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => topProductList[index],
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemCount: topProductList.length,
        ),

      )
    ],
  );
}