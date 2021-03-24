import 'package:flutter/material.dart';

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
          Padding(padding: EdgeInsets.only(top: 15.0, left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.arrow_back_ios), 
              color: Colors.white,
              onPressed: (){}),
              Container(
                width: 125.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.filter_list),
                      color: Colors.white, 
                      onPressed: (){}),

                      IconButton(icon: Icon(Icons.menu),
                      color: Colors.white, 
                      onPressed: (){}),
                    ],
                ),
              )
            ],
          ),
          ),
          
          SizedBox(height: 25.0,),
          Padding(padding: EdgeInsets.only(left: 40.0),
          child: Row(
            children: [
              Text('Healthy',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0
              ),),
              SizedBox(width: 10.0,),

              Text('Food',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0
              ),
              ),

            ],
          ),
          ),
          SizedBox(height: 40.0,),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))),

            
          )      

          
        ],
      ),
    );
  }
}
