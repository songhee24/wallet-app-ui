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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),

                  // Plus Button
                  IconButton(
                    icon: const Icon(Icons.add),
                    padding: const EdgeInsets.all(4),
                    constraints: const BoxConstraints(
                      maxHeight: 40,
                      maxWidth: 40,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      highlightColor:
                          Colors.deepPurpleAccent[100]?.withOpacity(0.12),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            // Cards
            Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Balance',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    '\$5,250,20',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '**** 3456',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        '10/24',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
