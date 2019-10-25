import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {},
          ),
          MaterialButton(
            child: Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.redAccent,
        bottom: AppBar(),
        bottomOpacity: 0.5,
        brightness: Brightness.dark,
        elevation: 1.0,
        flexibleSpace: Image.network(
          'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s900-c-k-c0xffffffff-no-rj-mo',
        ),
        iconTheme: IconThemeData(color: Colors.black, opacity: 1.0),
        leading: IconButton(
          icon: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn.vox-cdn.com/thumbor/DVN7eqE1o8HeBOP-jg15YHTsiLY=/0x0:640x427/1200x800/filters:focal(0x0:640x427)/cdn.vox-cdn.com/assets/1496753/stevejobs.jpg',
            ),
          ),
          onPressed: () {
            print('Open user profile');
          },
        ),
        primary: true,
        titleSpacing: 15.0,
        toolbarOpacity: 1.0,
        textTheme: TextTheme(
          title: TextStyle(color: Colors.green),
          button: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
