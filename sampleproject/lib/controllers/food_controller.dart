import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sampleproject/models/food_model.dart';


Future<List<YGOCard>> getBlueEyesCards() async {
  final response = await http.get('https://db.ygoprodeck.com/api/v5/cardinfo.php?archetype=Blue-Eyes');
  if(response.statusCode == 200){
    return (json.decode(response.body) as List ).map((i) => YGOCard.fromJson(i)).toList();
  }else{
    throw 'Failed';
  }
}

Future<YGOCard> getRandomCard() async {
  final response = await http.get('https://db.ygoprodeck.com/api/v5/randomcard.php');
  if(response.statusCode == 200){
    return YGOCard.fromJson(json.decode(response.body)[0]);
  }else{
    print(response.statusCode);
    throw 'Failed';
  }
}