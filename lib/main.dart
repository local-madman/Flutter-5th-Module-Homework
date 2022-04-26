import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homework 5'),
      ),
      endDrawer: Drawer(
        child: Container(
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 150,
            child: Text('Second Avatar'),
          ),
        )
      ),
      floatingActionButton: Builder(
          builder: (BuildContext context){
            return FloatingActionButton(
                onPressed: (){
                  Scaffold.of(context).showBottomSheet<void>(
                          (BuildContext context) => Container(
                            width: double.infinity,
                            height: 200,
                            color: Colors.grey,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('PlaceHolder'),
                                  const Text('PlaceHolder'),
                                  const Text('PlaceHolder'),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Exit'))
                                ],
                              ),
                            ),
                          ),
                  );
                }
                );
          }
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'simple app',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children:  [
            DrawerHeader(
                child: CircleAvatar(
                  radius: 100,
                  child: Text('Avatar'),
                )
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_circle_right),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_circle_right),
              title: Text('Favorite'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              trailing: Icon(Icons.arrow_circle_right),
              title: Text('Information'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              trailing: Icon(Icons.arrow_circle_right),
              title: Text('Contacts'),
            ),
            Padding(
              padding: EdgeInsets.all(1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(onPressed: (){}, child: Text('Регистрация')),
                  ElevatedButton(onPressed: (){}, child: Text('Выход'))
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite')
          ],
        ),
      ),
    );
  }
}
