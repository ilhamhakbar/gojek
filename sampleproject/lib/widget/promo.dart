import 'package:flutter/material.dart';
import 'package:sampleproject/constants/theme.dart';

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Top picks for you",
                    style:h2,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(child: Divider()),
                ],
              ),
            ),
            Container(
              width: sizeHorizontal * 100,
              height: 150.0,
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/Blog_Header.png"), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: <Widget>[
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Voucher Rp 10.000 di GoFood Festival!",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              margin: EdgeInsets.only(top: 5.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Potongan harga untuk minimum pembelian Rp 15.000. GoFood adalah layanan antar makanan terbesar di Indoensia",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.centerRight,
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    color: Colors.green,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Redeem",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ]));
  }
}