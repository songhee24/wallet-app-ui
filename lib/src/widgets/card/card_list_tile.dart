import 'package:flutter/material.dart';

///  Created by mac on 8/2/23.
class CardListTile extends StatelessWidget {
  final String imageLink;
  final String tileName;
  final String tileSubname;
  final double marginBottom;

  const CardListTile({
    super.key,
    required this.imageLink,
    required this.tileName,
    required this.tileSubname,
    this.marginBottom = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottom),
      child: Row(
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
                child: Image(
                  image: AssetImage(imageLink),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tileName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    tileSubname,
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
      ),
    );
  }
}
