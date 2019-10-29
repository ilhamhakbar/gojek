import 'package:flutter/material.dart';
import 'package:sampleproject/widget/food/foodcard.dart';

class GoFood extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          Container(),
          Text("GoFood"),
        ],),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          FoodCard(),
        ],),
      )
    );
  }
}