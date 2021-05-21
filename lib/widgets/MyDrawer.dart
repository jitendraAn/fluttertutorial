import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Jitendra Rathore'),
                  accountEmail: Text('rathorejitendra81@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg'),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text(
                'Mail',
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
