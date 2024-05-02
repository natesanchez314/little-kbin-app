import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _incrementCounter() {}

  void _dropDown() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          DropdownButton(
            value: 0,
            items: const [
              DropdownMenuItem(
                value: 0,
                child: Text('Hot')
              ),
              DropdownMenuItem(
                  value: 1,
                  child: Text('Top')
              ),
              DropdownMenuItem(
                  value: 2,
                  child: Text('New')
              ),
            ],
            onChanged: (value) {
              value = value;
            },
          )
        ]
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.face,
                size: 48.0,
                color: Colors.white
              ),
              accountName: Text("Caffeinated_Capybara"),
              accountEmail: Text("@Caffeinated_Capybara@kbin.social"),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
                onTap: () => {},
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.gesture),
            label: 'Threads'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            label: 'Microblog'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages'
          ),
        ],
      ),
    );
  }
}
