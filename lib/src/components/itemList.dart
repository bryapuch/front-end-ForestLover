import 'package:front_end_forestlover/src/pages/detailsPage.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => DetailsPage(
                        list: list,
                        index: i,
                      )),
            ),
            child: Card(
              child: ListTile(
                title: Text(
                  list[i]['username'].toString(),
                  style: const TextStyle(
                      fontSize: 25.0, color: Colors.orangeAccent),
                ),
                subtitle: Text(
                  list[i]['body'].toString(),
                  style: const TextStyle(
                      fontSize: 25.0, color: Colors.orangeAccent),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
