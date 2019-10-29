import 'package:flutter/material.dart';
import 'package:sampleproject/widget/gopay.dart';
import 'package:sampleproject/widget/layanan.dart';
import 'package:sampleproject/widget/promo.dart';
import 'package:sampleproject/constants/theme.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Container(padding: EdgeInsets.all(2.0),
            child: Card(
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Hungry?", border: InputBorder.none),
                  ),
                ),
              ),),
        backgroundColor: Colors.transparent,
        //centerTitle: , posisi title (true fales)
        actions: <Widget>[
          Container(margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('AA'),
              backgroundColor: Colors.blue,
            ),
            )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GoPay(),
            Layanan(),
            Promo(),
          ],
        ),
      ),
    );
  }
}
