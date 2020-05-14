import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("teste"),
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: Text("Texto"),
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                  ListTile(
                    title: Text("Desenvolvimento Mobile"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("Desenvolvimento Web"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            body: Container(
              color: Colors.amber,
              child: Row(
                children: [
                  Expanded(
                    child: Text("William Ramos"),
                  ),
                  Expanded(child: Text("Developer")),
                  Expanded(
                    child: Text("1366"),
                  )
                ],
              ),
            ),
          bottomNavigationBar: CurvedNavigationBar(items: <Widget>[
            Icon(Icons.add,size:30),
            Icon(Icons.library_books,size:30),
            Icon(Icons.directions_transit,size:30)
          ],),
        ));
  }
}
