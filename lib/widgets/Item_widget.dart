import 'package:flutter/material.dart';
import 'package:flutter_catlog_app/models/catelogItem.dart';

class ItemWidget extends StatelessWidget {
  final Item items;

  const ItemWidget({Key key, @required Item this.items})
      : assert(items!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:EdgeInsets.all(10),
      child: ListTile(
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text("\$${items.price}"),
      ),
    );
  }
}
