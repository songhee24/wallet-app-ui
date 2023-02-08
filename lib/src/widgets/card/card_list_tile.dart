import 'package:flutter/material.dart';

///  Created by mac on 8/2/23.
class CardListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: <Widget>[
            Container(
              height: 80,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Image(
                image: AssetImage('assets/icons/monitoring.png'),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Statistics',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Payment and Incoming',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600]!,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
