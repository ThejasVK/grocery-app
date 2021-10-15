import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/widgets/categories_tile.dart';
import 'package:grocery/widgets/top_product_tile.dart';
import 'package:grocery/fruits.dart';
import 'package:grocery/vegetable.dart';
import 'package:grocery/milk.dart';
import 'package:grocery/main_drawer.dart';
import 'package:grocery/meat.dart';
import 'package:grocery/about.dart';
import 'package:grocery/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
//_MainPageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff84CC83),
        elevation: 0,
        title: Text('Home'),
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

  List<Widget> _buildActions() => <Widget>[

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
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Categories',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildCategoriesList()
        ],
      ),
    );
  }

  Widget _buildCategoriesList() {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
      IconButton(
        icon: Image.asset('assets/images/apple.png'),
        color: Colors.black,
        iconSize: 50,

        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FruitsPage()));
        },
      ),
        IconButton(
          icon: Image.asset('assets/images/bread.png'),
          color: Colors.black,
          iconSize: 50,

          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BreadPage()));
          },
        ),

      IconButton(
        icon: Image.asset('assets/images/vegetable.png'),
        color: Colors.green,
        iconSize: 50,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VegetablePage()));
        },
      ),
        IconButton(
          icon: Image.asset('assets/images/milk.png'),
          color: Colors.green,
          iconSize: 50,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MilkPage()));
          },
        ),

        /*CategoriesTile(
          assetPath: 'assets/images/apple.png',
          color: Color(0xffDFECF8),
          title: 'Fruits',
        ),
        CategoriesTile(
          assetPath: 'assets/images/vegetable.png',
          color: Color(0xffE2F3C2),
          title: 'Vegetables',
        ),
        CategoriesTile(
          assetPath: 'assets/images/milk.png',
          color: Color(0xffFFDBC5),
          title: 'Milk Products',
        ),*/
      ],
    );
  }

  Widget _buildTopProducts() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Top Products',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // _ExploreAllButton(
                // onTap: () {},
                //),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildTopProductsLists(),
          SizedBox(
            height: 20,
          ),
          _buildTopVegetablesList(),
          SizedBox(
            height: 20,
          ),
          _buildTopMeatList(),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0, 25.0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Fruits',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // _ExploreAllButton(
                // onTap: () {},
                //),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildTopProductsList(),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0, 25.0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Vegetables',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // _ExploreAllButton(
                // onTap: () {},
                //),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildVegetablesList(),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0, 25.0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Show plants',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // _ExploreAllButton(
                // onTap: () {},
                //),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildShowPlantsList(),

        ],
      ),
    );
  }

  Widget _buildTopProductsList() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\₹20.00',
        title: 'Kiwi Fruit',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/summer.png',
        title: 'Watermelon',
        price: '\₹80.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Strawberry',
        price: '\₹50.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Mango',
        price: '\₹30.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Orange',
        price: '\₹40.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Banana',
        price: '\₹25.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Grapes',
        price: '\₹45.00',
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

  Widget _buildVegetablesList() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\₹20.00',
        title: 'Brinjal',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/summer.png',
        title: 'Onion',
        price: '\₹80.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Potato',
        price: '\₹50.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Capsicum',
        price: '\₹30.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Carrot',
        price: '\₹40.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Beetroot',
        price: '\₹25.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Cabbage',
        price: '\₹45.00',
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

  Widget _buildTopVegetablesList() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\₹20.00',
        title: 'Brinjal',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/summer.png',
        title: 'Onion',
        price: '\₹80.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Potato',
        price: '\₹50.00',
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

  Widget _buildTopMeatList() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\₹80.00',
        title: 'Chicken',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/summer.png',
        title: 'Beef',
        price: '\₹100.0',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
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

  Widget _buildShowPlantsList() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\₹20.00',
        title: 'Bonsai',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/summer.png',
        title: 'Gladiola',
        price: '\₹80.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Spider plant',
        price: '\₹50.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Snake plant',
        price: '\₹30.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Aloevera',
        price: '\₹40.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Rubber plant',
        price: '\₹25.00',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Pilea',
        price: '\₹45.00',
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
  //----------------------------------------------

  Widget _buildTopProductsLists() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/kiwi.png',
        color: Color(0xffDFECF8),
        price: '\₹2.25',
        title: 'Kiwi Fruit',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/strawberry.png',
        title: 'Strawberry',
        price: '\₹3.50',
      ),
      TopProductTile(
        color: Color(0xffF4DEF8),
        assetPath: 'assets/images/summer.png',
        title: 'Watermelon',
        price: '\₹1.50',
      ),
    ];

    return Column(
      children: <Widget>[
        Container(
          height: 200,
          margin: EdgeInsets.fromLTRB(0, 16.0, 0, 0),
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
