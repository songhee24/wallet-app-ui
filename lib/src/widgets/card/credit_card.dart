import 'package:flutter/material.dart';

///  Created by mac on 8/2/23.
class CreditCard extends StatelessWidget {
  final double symmetricMargin;
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final String cardType;

  const CreditCard({
    super.key,
    this.symmetricMargin = 0,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.cardType,
  });

  List<Color> defineCardColorsByType(String cardType) {
    if (cardType == 'Visa') {
      return [
        Colors.lightGreen,
        Colors.lightBlue,
      ];
    }

    if (cardType == 'MasterCard') {
      return [
        Colors.redAccent[700]!,
        Colors.yellow[900]!,
      ];
    }

    if (cardType == 'UnionPay') {
      return [
        Colors.blueAccent,
        Colors.deepOrangeAccent[700]!,
      ];
    }

    return [
      Colors.white12,
      Colors.black54,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: symmetricMargin),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: defineCardColorsByType(cardType),
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Balance',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                cardType,
                style: Theme.of(context).textTheme.headline1?.merge(
                      const TextStyle(
                        fontSize: 22,
                      ),
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '\$ $balance',
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
                '$cardNumber',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                '$expiryMonth/$expiryYear',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
