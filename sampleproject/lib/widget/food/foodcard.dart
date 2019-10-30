import 'package:flutter/material.dart';
import 'package:sampleproject/constants/theme.dart';
import 'package:sampleproject/models/food_model.dart';
import 'package:sampleproject/controllers/food_controller.dart';
// import 'package:sampleproject/widget/food/foodData.dart';

class FoodCard extends StatefulWidget {
  @override
  _FoodCard createState() => _FoodCard();
}

class _FoodCard extends State<FoodCard> {
  List<YGOCard> blueEyesCards = List();
  bool isLoading = false;

  init() async {
    setState(() {
      isLoading = true;
    });
    List<YGOCard> _blueEyesTemp = List();
    _blueEyesTemp = await getBlueEyesCards();
    setState(() {
      blueEyesCards = _blueEyesTemp;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              "Ganjelan Perut",
              style: h3,
            ),
          ),
          Container(
            child: Text(
              "Pilihannya udah kita sediain, lho",
              style: t2,
            ),
          ),
          Container(
            height: 300,
            child: Column(
              children: <Widget>[
                (blueEyesCards.length == 0 || blueEyesCards == null || isLoading)?Container(
              child: CircularProgressIndicator(),
            ):blueEyesCardsContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  renderFoodCard(YGOCard ygoCard) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.all(0),
      child: Card(
        child: Container(
          height: 200,
          width: 150,
          child: Column(
            children: <Widget>[
              Image.network(
                ygoCard.images,
                height: 150,
              ),
              Container(
                child: Column(
                  children: <Widget>[Text(ygoCard.name)],
                ),
              ), //Nama makanan
              Container(
                child: Text(ygoCard.type),
              ) //Harga
            ],
          ),
        ),
      ),
    );
  }

  blueEyesCardsContainer() {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: blueEyesCards.length,
          itemBuilder: (context, i) {
            return renderFoodCard(blueEyesCards[i]);
          }),
    );
  }
}
