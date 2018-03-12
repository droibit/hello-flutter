import 'package:flutter/material.dart';

class BuildLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleSection = Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Oeschinen Lake Campground',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          Text('41')
        ],
      ),
    );

    Column buildButtonColumn({IconData icon, String label}) {
      Color primaryColor = Theme.of(context).primaryColor;
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: primaryColor),
          new Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: primaryColor),
            ),
          )
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(icon: Icons.call, label: 'CALL'),
          buildButtonColumn(icon: Icons.near_me, label: 'ROUTE'),
          buildButtonColumn(icon: Icons.share, label: 'SHARE')
        ],
      ),
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return new ListView(
      children: <Widget>[
        Image.asset(
          'images/lake.jpeg',
          height: 240.0,
          width: 600.0,
          fit: BoxFit.cover,
        ),
        titleSection,
        buttonSection,
        textSection
      ],
    );
  }
}
