class YGOCard {
  String id;
  String name;
  String type;
  String description;
  String attack;
  String defense;
  String race;
  String attribute;
  String linkval;
  String level;
  String images;
  String archetype;
  List<CardSet> cardSets;

  YGOCard({
    this.archetype, this.level,
    this.id,this.name,this.cardSets,this.type,this.attack, this.attribute, this.defense, this.description, this.images, this.linkval, this.race
  });

  factory YGOCard.fromJson(Map<String, dynamic> json){
    return YGOCard(
      archetype: (json.containsKey('archetype'))?json['archetype']:null,
      level: (json.containsKey('level'))?json['level']:null,
      id: json['id'],
      name: json['name'],
      type: json['type'],
      description: json['desc'],
      attack: (json.containsKey('atk'))?json['atk']:null,
      defense: (json.containsKey('def'))?json['def']:null,
      attribute: (json.containsKey('attribute'))?json['attribute']:null,
      images: json['card_images'][0]['image_url_small'],
      linkval: (json.containsKey('linkval'))?json['linkval']:null,
      race: json['race'],
      cardSets: (json['card_sets'] as List).map((i) => CardSet.fromJson(i)).toList()
    );
  }

}

class CardSet{
  String name;
  String code;
  String rarity;
  String price;

  CardSet({this.name, this.code, this.rarity, this.price});

  factory CardSet.fromJson(Map<String, dynamic> json){
    return CardSet(
      name: json['set_name'],
      code: json['set_code'],
      rarity: json['set_rarity'],
      price: json['set_price']
    );
  }
}