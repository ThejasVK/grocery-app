import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/widgets/categories_tile.dart';
import 'package:grocery/widgets/top_product_tile.dart';
import 'package:grocery/main_drawer.dart';
import 'package:grocery/cart.dart';

class VegetablePage extends StatefulWidget {
  @override
  _VegetablePageState createState() => _VegetablePageState();
//_MainPageState createState() => _HomePageState();
}

class _VegetablePageState extends State<VegetablePage> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff84CC83),
        elevation: 0,
        title: Text('Vegetables'),

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
      //bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTopProducts() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        children: <Widget>[

          _buildVegetablesList1(),
          SizedBox(
            height: 20,
          ),
          _buildVegetablesList2(),

          SizedBox(
            height: 20,
          ),
          _buildVegetablesList3(),

          SizedBox(
            height: 20,
          ),
          _buildVegetablesList4(),
          SizedBox(
            height: 20,
          ),
          _buildVegetablesList5(),
        ],
      ),
    );
  }

  List<Widget> _buildActions() =>
      <Widget>[
        /* IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.grey,
          tooltip: 'Search',
        ),*/
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
                  'Vegetables',
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

  Widget _buildVegetablesList1() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/beans.png',
        color: Color(0xffDFECF8),
        price: '\₹2.25',
        title: 'Beans',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/beetroot.png',
        title: 'Beetroot',
        price: '\₹1.50',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/brinjal.png',
        title: 'Brinjal',
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

  Widget _buildVegetablesList2() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/capsicum.png',
        color: Color(0xffDFECF8),
        price: '\₹2.25',
        title: 'Capsicum',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/carrot.png',
        title: 'Carrot',
        price: '\₹1.50',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/cauliflower.png',
        title: 'Cauliflower',
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

  Widget _buildVegetablesList3() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/coriander.png',
        color: Color(0xffDFECF8),
        price: '\₹2.25',
        title: 'Coriander',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/curry.png',
        title: 'Curry Leaves',
        price: '\₹1.50',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/garlic.png',
        title: 'Garlic',
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

  Widget _buildVegetablesList4() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/methi.png',
        color: Color(0xffDFECF8),
        price: '\₹2.25',
        title: 'Methi',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/mint.png',
        title: 'Mint Leaves',
        price: '\₹1.50',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/onion.png',
        title: 'Onion',
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

  Widget _buildVegetablesList5() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/sabsige.png',
        color: Color(0xffDFECF8),
        price: '\₹2.25',
        title: 'Sabsige',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/pumpkin.png',
        title: 'Pumpkin',
        price: '\₹1.50',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/radish.png',
        title: 'Radish',
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