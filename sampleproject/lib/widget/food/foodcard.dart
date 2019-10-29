import 'package:flutter/material.dart';
import 'package:sampleproject/constants/theme.dart';
import 'package:sampleproject/widget/food/foodData.dart';

class FoodCard extends StatelessWidget {
  final List<String>namaMakanan = ['Ayam Goeng', 'Bebek Panggang', 'Pecel Lele'];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text("Ganjelan Perut", style: h3,),
          ),
           Container(
            child: Text("Pilihannya udah kita sediain, lho", style: t2,),
          ),
          Container(
            height: 200,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FoodData(),
                FoodData(),
                FoodData(),
                FoodData()
              ],
            ),),
          Container(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: namaMakanan.length,
              itemBuilder: (context, i){
                return FoodData(
                  nama_makanan: namaMakanan[i],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
