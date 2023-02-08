import 'package:flutter/material.dart';

///  Created by mac on 8/2/23.
class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Balance', style: Theme.of(context).textTheme.headline1),
          const SizedBox(
            height: 15,
          ),
          Text(
            '\$5,250,20',
            style: Theme.of(context).textTheme.headline1?.merge(
                  const TextStyle(
                    fontSize: 22,
                  ),
                ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
