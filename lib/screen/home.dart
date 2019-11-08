import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.gadgethacks.com/img/08/26/63643331021647/0/easy-way-clean-up-your-whatsapp-chat-logs.w1456.jpg'),
            ),
            Icon(
              Icons.music_video,
              size: 100,
            ),
            Icon(
              Icons.call,
              size: 100,
            ),
            ListView()
          ],
        ),
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("New group"),
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(
                  child: Text("WhatsApp Web"),
                ),
                PopupMenuItem(
                  child: Text("Starred message"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
              ],
            ),
          ],
          backgroundColor: Color(0xFF005200),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.photo_camera)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Bill Gates'),
                accountEmail: Text('bilgates@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://specials-images.forbesimg.com/imageserve/5c76b4b84bbe6f24ad99c370/416x416.jpg?background=000000&cropX1=0&cropX2=4000&cropY1=0&cropY2=4000'),
                ),
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person_outline),
              ),
              ListTile(
                title: Text('Chats'),
                leading: Icon(Icons.chat),
              ),
              ListTile(
                title: Text('Send'),
                leading: Icon(Icons.send),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          backgroundColor: Color(0xFF00ff00),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Message'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_file),
              title: Text('Attach'),
            ),
          ],
        ),
      ),
    );
  }
}
