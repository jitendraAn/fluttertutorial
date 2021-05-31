import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catlog_app/models/catelogItem.dart';
import 'package:flutter_catlog_app/widgets/Item_widget.dart';
import 'package:flutter_catlog_app/widgets/MyDrawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 //var dumylist=null;


  @override
  void initState() {
    loadData();
  }

  void loadData() async{

    await Future.delayed(Duration(seconds: 5));
    var catlogjson=await rootBundle.loadString('assets/files/catelog.json');
    var decodejson=jsonDecode(catlogjson);
     var items=decodejson["products"];
    CatelogModel.Items=List.from(items).map<Item>((item) => Item.fromMap(item)).toList();

      setState(() {

      });
  }

  @override
  Widget build(BuildContext context) {

    // final dumylist=List.generate(10, (index) =>ItemWidget(items:CatelogModel.Items[0]) );
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Catelog App')),),
      body:( CatelogModel.Items==null) ?
      Center(child: CircularProgressIndicator(),)
     : ListView.builder(itemBuilder: (context, index) {
        return ItemWidget(items: CatelogModel.Items[index]);
      },
        // itemCount: CatelogModel.Items.length!=null?CatelogModel.Items.length :0,
        itemCount: CatelogModel.Items.length,
      ),
      drawer: MyDrawer(),
    );
  }


}
