import 'package:flutter/material.dart';
import 'package:front_end_forestlover/src/helpers/databaseHelper.dart';
import 'package:front_end_forestlover/src/pages/publicationPage.dart';

class DetailsPage extends StatefulWidget {
  List list;
  int index;
  DetailsPage({required this.list, required this.index});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  //create function delete
  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
          "Esta seguto de eliminar '${widget.list[widget.index]['name']}'"),
      actions: <Widget>[
        new TextButton(
          child: new Text(
            "OK remove!",
            style: new TextStyle(color: Colors.black),
          ),
          onPressed: () {
            databaseHelper
                .removeRegister(widget.list[widget.index]['_id'].toString());
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new ListProducts(),
            ));
          },
        ),
        new TextButton(
          child: new Text("CANCEL", style: new TextStyle(color: Colors.black)),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.list[widget.index]['name']}")),
      body: Container(
        height: 270.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Text(
                  widget.list[widget.index]['username'],
                  style: new TextStyle(fontSize: 20.0),
                ),
                const Divider(),
                Text(
                  "Price : ${widget.list[widget.index]['body']}",
                  style: TextStyle(fontSize: 18.0),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
