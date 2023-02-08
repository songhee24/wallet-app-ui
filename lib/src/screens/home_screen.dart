import 'package:flutter/material.dart';

///  Created by mac on 8/2/23.
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: const <Widget>[
                  Text(
                    'My Cards',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
