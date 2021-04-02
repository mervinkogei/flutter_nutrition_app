import 'package:flutter/material.dart';
import 'package:nutrition_app/details_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {}),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {}),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Text(
                  'Healthy',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Food',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(75.0))),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300,
                    child: ListView(
                      children: [
                        _buildFoodItem('images/food_1.jpg', 'Pizza','\ksh 2000'),
                         _buildFoodItem('images/food_2.jpg', 'Pizza','\ksh 2000'),
                          _buildFoodItem('images/food_3.jpeg', 'Pizza','\ksh 2000'),
                           _buildFoodItem('images/food_4.jpeg', 'Pizza','\ksh 2000'),
                            _buildFoodItem('images/food_5.jpeg', 'Pizza','\ksh 2000'),
                             _buildFoodItem('images/food_6.jpeg', 'Pizza','\ksh 2000'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 65.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.lightBlue,
                      ),
                      child: Center(
                        child: Icon(Icons.search, color: Colors.white,),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                         color: Colors.lightBlue,
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_basket_rounded, color: Colors.white,),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.lightBlue,
                      ),
                      child: Center(
                        child: Text('Checkout', style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

    Widget _buildFoodItem(String imgPath, String foodName, String foodPrice) {
      return Padding(
        padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
        child: InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>DetailsPage(heroTag: imgPath,foodName: foodName, foodPrice: foodPrice,))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Hero(tag: imgPath, 
                    child: Image(image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,)),
                    SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(foodName, style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10.0)),
                          Text(foodPrice, style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          )
                        ],
                      )
                  ],
                ),
              ),
              IconButton(icon: Icon(Icons.add), onPressed: (){})
            ],
          ),
        ),
      );
    }
  }

