
class CatelogModel{
 static final Items = [
    Item(
        id: 1,
        name: 'Galexy f41',
        desc: 'my mobile samsung galaxy f41',
        price: 900,
        image:
        'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg')
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}


