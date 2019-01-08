import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{


  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();

}




class _HomePageState extends State<HomePage>{


  static TextEditingController _editingController = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: TextField(
            controller: _editingController,
            onChanged: (str) {
              print(_editingController.text);
            },
            decoration: new InputDecoration(
                hintText: 'hinttext', border: new OutlineInputBorder())));
  }
}