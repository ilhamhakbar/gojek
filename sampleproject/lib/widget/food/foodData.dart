import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/makanan.json');
}

class FoodData extends StatelessWidget {
  final int id_toko;
  final String nama_toko;
  final int id_makanan;
  final String nama_makanan;
  final String harga_makanan;

  FoodData({@required this.id_toko, @required this.nama_toko, @required this.id_makanan, @required this.nama_makanan, @required this.harga_makanan });


  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.all(0),
      child: Card(
        child: Container(
          height: 200,
          width: 150,
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                color: Colors.red,
              ),//Gambar dan Nama Restoran
              Container(
                child: (nama_makanan==null)?Text("Ayam Goreng"):Text(nama_makanan),
              ),//Nama makanan
              Container(
                child: Text("15000"),
              )//Harga
            ],
          ),
        ),
      ),
    );
  }
}
