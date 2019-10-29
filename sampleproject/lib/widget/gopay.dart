import 'package:flutter/material.dart';
import 'package:sampleproject/order.dart';

class GoPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            color: Color(0xff2c60b6),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5))),
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Text("GoPay",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Spacer(),
            Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(5.0),
                child: Text("Rp192.000",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ))),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff3066be),Color(0xff2c60b6)]
          ),
            // color: Color(0xff2d60b9),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5))),
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        width: 400,
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderPage()));
              },
              // color: Color(0xff2d60b9),
              padding: EdgeInsets.all(5.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "Pay",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              // color: Color(0xff2d60b9),
              padding: EdgeInsets.all(5.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "Promo",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              // color: Color(0xff2d60b9),
              padding: EdgeInsets.all(5.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "Top Up",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              // color: Color(0xff2d60b9),
              padding: EdgeInsets.all(5.0),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "More",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
