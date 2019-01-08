import 'package:flutter/material.dart';

class UserPage extends StatefulWidget{
  UserPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  UserPageState createState() => UserPageState();
}


class UserPageState extends State<UserPage>{
  @override
  Widget build(BuildContext context) {
    return
      ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              width: double.infinity,

              padding: EdgeInsets.all(20.0),
              child: Text('index $index'),
            ),
            onTap: () {
              onItemClick(index, context);
            },
          );
        },
        separatorBuilder: (BuildContext content, int index) {
          return new Divider();
        },
        itemCount: 20);
  }


  static void onItemClick(int i, BuildContext content) {
    print('itemclick $i');

    showDialog(
        context: content,
        builder: (content) => AlertDialog(
          title: Text('新浪金融'),
          content: Text('您是否要删除此项列表？'),
          actions: <Widget>[
            new FlatButton(
                onPressed: () {
                  print('cancel');
                  Navigator.of(content).pop();
                },
                child: Text('取消')),
            new FlatButton(
                onPressed: () {
                  print('ok');
                  Navigator.of(content).pop();
                },
                child: Text('确定')),
          ],
        ));

//    _neverSatisfied();
  }

}
