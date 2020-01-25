import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_home_flutter/ui/room_page/room_widget.dart';


class RoomPage extends StatelessWidget {
  final String roomName;


  RoomPage(this.roomName);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(FontAwesomeIcons.arrowLeft,
                    color: Theme.of(context).textTheme.body1.color),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Text(
              roomName,
              style: TextStyle(
                  fontSize: 23.0,
                  color: Theme.of(context).textTheme.body1.color,
                  decoration: TextDecoration.underline),
            ),
            RoomWidget(
              [
                {'title': 'Smart device 1', 'number': 12},
                {'title': 'Smart device 2', 'number': 15},
                {'title': 'Smart device 3', 'number': 16},
                {'title': 'Smart device 4', 'number': 6},
                {'title': 'Smart device 5', 'number': 14},
                {'title': 'Smart device 6', 'number': 17},
                {'title': 'Smart device 7', 'number': 999},
                {'title': 'Smart device 8', 'number': 233},
                {'title': 'Smart device 9', 'number': 24},
              ],
              () {},
              () {},
            ),
          ],
        ),
      ),
    );
  }
}
