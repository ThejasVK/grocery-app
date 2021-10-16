import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/widgets/categories_tile.dart';
import 'package:grocery/widgets/top_product_tile.dart';
import 'package:grocery/main_drawer.dart';
import 'package:grocery/cart.dart';

class BreadPage extends StatefulWidget {
  @override
  _BreadPageState createState() => _BreadPageState();
//_MainPageState createState() => _HomePageState();
}

class _BreadPageState extends State<BreadPage> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff84CC83),
        elevation: 0,
        title: Text('Meat'),
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

          _buildMeatList1(),
          SizedBox(
            height: 20,
          ),
          _buildMeatList2(),

          SizedBox(
            height: 20,
          ),
          _buildMeatList3(),

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
                  'Meat and Seafood Products',
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

  Widget _buildMeatList1() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/meatCard.png',
        color: Color(0xffDFECF8),
        price: '\₹80.00',
        title: 'Chicken',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/meatCard.png',
        title: 'Mutton',
        price: '\₹100.0',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/fish.png',
        title: 'Fish',
        price: '\₹300.00',
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

  Widget _buildMeatList2() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/prawns.png',
        color: Color(0xffDFECF8),
        price: '\₹80.00',
        title: 'Prawns',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/meatCard.png',
        title: 'Beef',
        price: '\₹100.0',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/fish.png',
        title: 'Fish',
        price: '\₹300.00',
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

  Widget _buildMeatList3() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/meatCard.png',
        color: Color(0xffDFECF8),
        price: '\₹80.00',
        title: 'Chicken',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/meatCard.png',
        title: 'Beef',
        price: '\₹100.0',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/fish.png',
        title: 'Fish',
        price: '\₹300.00',
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
