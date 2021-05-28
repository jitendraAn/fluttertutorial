import 'package:flutter/material.dart';
import 'package:flutter_catlog_app/models/catelogItem.dart';
import 'package:flutter_catlog_app/widgets/Item_widget.dart';
import 'package:flutter_catlog_app/widgets/MyDrawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final dumylist=List.generate(10, (index) =>ItemWidget(items:CatelogModel.Items[0]) );
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Catelog App')),),
      body: ListView.builder(itemBuilder: (context, index) {
        return dumylist[index];
      },
      itemCount:dumylist.length ,
      ),
      drawer: MyDrawer(),
    );
  }
}
