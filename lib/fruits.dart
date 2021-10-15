import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/widgets/categories_tile.dart';
import 'package:grocery/widgets/top_product_tile.dart';
import 'package:grocery/main_drawer.dart';

import 'package:grocery/cart.dart';

class FruitsPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff84CC83),
        elevation: 0,
        title: Text('Fruits'),

        actions: _buildActions(),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(0, 16.0, 0, 0),
          child: Column(
            children: <Widget>[
              Center(child: Image.asset('assets/images/banner.png')),
              _buildCategories(),
              _buildTopProducts(),
            ],
          ),
        ),
      ),

    );
  }

  Widget _buildTopProducts() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        children: <Widget>[

          _buildFruitsList1(),
          SizedBox(
            height: 20,
          ),
          _buildFruitsList2(),

          SizedBox(
            height: 20,
          ),

          _buildFruitsList3(),

          SizedBox(
            height: 20,
          ),
          _buildFruitsList4(),

        ],
      ),
    );
  }

  List<Widget> _buildActions() =>
      <Widget>[
        IconButton(
          icon: Icon(
            FontAwesomeIcons.shoppingBasket,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartPage()));
          },
          color: Colors.black,
          tooltip: 'Cart',
        )
      ];

  Widget _buildCategories() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(5, 0.0, 0, 0),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Fruits',
                  style: GoogleFonts.varelaRound(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //_ExploreAllButton(
                //onTap: () {},
                //),
              ],
            ),
          ),
          //_buildCategoriesList()
        ],
      ),
    );
  }

  Widget _buildFruitsList1() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\₹2.25',
        title: 'Kiwi Fruit',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/watermelon.png',
        title: 'Watermelon',
        price: '\₹1.50',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Strawberry',
        price: '\₹3.50',
      ),

    ];

    return Column(
      children: <Widget>[
        Container(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => topProductList[index],
            separatorBuilder: (context, index) => SizedBox(width: 20),
            itemCount: topProductList.length,
          ),
        )
      ],
    );
  }
}

Widget _buildFruitsList2() {
  List topProductList = [
    TopProductTile(
      assetPath: 'assets/images/mango.png',
      color: Color(0xffDFECF8),
      price: '\₹2.25',
      title: 'Mango',
    ),
    TopProductTile(
      color: Color(0xffF4DEF8),
      assetPath: 'assets/images/banana.png',
      title: 'Banana',
      price: '\₹1.50',
    ),
    TopProductTile(
      color: Color(0xffFFF2C5),
      assetPath: 'assets/images/grapes.png',
      title: 'Grapes',
      price: '\₹3.50',
    ),

  ];

  return Column(
    children: <Widget>[
      Container(
        height: 200,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => topProductList[index],
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemCount: topProductList.length,
        ),
      )
    ],
  );
}


Widget _buildFruitsList3() {
  List topProductList = [
    TopProductTile(
      assetPath: 'assets/images/jackFruit.png',
      color: Color(0xffDFECF8),
      price: '\₹2.25',
      title: 'Jack Fruit',
    ),
    TopProductTile(
      color: Color(0xffF4DEF8),
      assetPath: 'assets/images/orange.png',
      title: 'Orange',
      price: '\₹1.50',
    ),
    TopProductTile(
      color: Color(0xffFFF2C5),
      assetPath: 'assets/images/papaya.png',
      title: 'Papaya',
      price: '\₹3.50',
    ),

  ];

  return Column(
    children: <Widget>[
      Container(
        height: 200,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => topProductList[index],
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemCount: topProductList.length,
        ),
      )
    ],
  );
}

Widget _buildFruitsList4() {
  List topProductList = [
    TopProductTile(
      assetPath: 'assets/images/pomogranate.png',
      color: Color(0xffDFECF8),
      price: '\₹2.25',
      title: 'Pomogranate',
    ),

  ];

  return Column(
    children: <Widget>[
      Container(
        height: 200,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => topProductList[index],
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemCount: topProductList.length,
        ),
      )
    ],
  );
}