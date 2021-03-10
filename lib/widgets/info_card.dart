import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard({@required this.text, @required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: ListTile(
            leading: Icon(this.icon, color: Colors.teal),
            title: Text(
              this.text,
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans'),
            )),
      ),
    );
  }
}
