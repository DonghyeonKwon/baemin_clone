import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  final arrow = Icon(Icons.arrow_drop_down);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                print('주소 pressed');
              },
              child: Row(
                children: [
                  Text(
                    '주소',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white,),
                ],
              )
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.interests),
                  onPressed: () {
                    print('interests pressed');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.notifications_none),
                  onPressed: () {
                    print('notifications_none pressed');
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.sentiment_very_satisfied,
                  ),
                  onPressed: () {
                    print('sentiment_very_satisfied pressed');
                  },
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Color(0xFF2AC1BC),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
    );
  }
}
