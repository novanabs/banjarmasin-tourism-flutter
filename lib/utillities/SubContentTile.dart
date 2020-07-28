import 'package:flutter/material.dart';

class SubContentTile extends StatelessWidget {
  SubContentTile({this.title, this.icon, this.description, this.color});

  final IconData icon;
  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      color: color,
      onPressed: () {},
      child: Container(
        child: ListTile(
          leading: Icon(
            icon,
            size: 50,
          ),
          title: Text(
            title,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          trailing: Icon(
            Icons.navigate_next,
            size: 50.0,
          ),
          subtitle: Text(
            description,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
