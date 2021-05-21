import 'package:flutter/material.dart';
import 'package:flutter_catlog_app/widgets/MyDrawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Catelog App')),),
      body: Center(child: Text('Jitendra rathore')),
      drawer: MyDrawer(),
    );
  }
}
