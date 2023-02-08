import 'package:flutter/material.dart';

///  Created by mac on 8/2/23.
class CardButton extends StatelessWidget {
  final String imageLink;
  final String title;

  const CardButton({
    super.key,
    required this.imageLink,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // icon
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                blurRadius: 100,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Image(
            image: AssetImage(imageLink),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        // text
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.grey[700]!,
          ),
        ),
      ],
    );
  }
}
