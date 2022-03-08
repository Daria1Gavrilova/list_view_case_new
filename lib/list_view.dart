import 'package:flutter/material.dart';

class ListViewCase extends StatelessWidget {
  const ListViewCase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyElements(),
      ),
    );
  }
}

class MyElements extends StatefulWidget {
  const MyElements ({Key? key}) : super(key: key);

  @override
  _MyElementsState createState() => _MyElementsState();
}

class _MyElementsState extends State<MyElements> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Элемент в списке # ${index+1}",),
            selected: index == _selectedIndex,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        }
    );
  }
}
