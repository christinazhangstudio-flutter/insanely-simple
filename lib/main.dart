import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless has no dynamic data
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //build method returns a widget and will be called whenever flutter needs to rebuild a widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green, title: const Text('Flutter is Fun!')),
      /*body: Center(
            child: Container(
                child: const Text('Hi Mom!'),
                padding: const EdgeInsets.all(10)),
          )),*/

      //unlike a container, which will take one widget, a column will take multiple children as a list
      //column is for vertical flow (cross)
      //row is for horizontal flow (main)
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Icon(Icons.baby_changing_station),
          Icon(Icons.bathtub),
          Icon(Icons.pedal_bike),
        ],
      ),*/

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('print pressed...');
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
      drawer: Drawer(
        child: Text('Yo!'),
      ),
    ));
  }
}
