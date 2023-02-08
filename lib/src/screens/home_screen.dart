import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/src/widgets/card/card_button.dart';
import 'package:wallet_app_ui/src/widgets/card/card_list_tile.dart';
import 'package:wallet_app_ui/src/widgets/card/credit_card.dart';

///  Created by mac on 8/2/23.
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const <Widget>[
                  CreditCard(
                    symmetricMargin: 16,
                    balance: 512.20,
                    cardNumber: 3242342342,
                    expiryMonth: 10,
                    expiryYear: 24,
                    cardType: 'Visa',
                  ),
                  CreditCard(
                    symmetricMargin: 16,
                    balance: 212.20,
                    cardNumber: 650632094,
                    expiryMonth: 04,
                    expiryYear: 25,
                    cardType: 'MasterCard',
                  ),
                  CreditCard(
                    symmetricMargin: 16,
                    balance: 152.20,
                    cardNumber: 5454657,
                    expiryMonth: 12,
                    expiryYear: 25,
                    cardType: 'UnionPay',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                spacing: 5,
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.grey[800]!,
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            // buttons
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  CardButton(
                    imageLink: 'assets/icons/send-money.png',
                    title: 'send',
                  ),
                  CardButton(
                    imageLink: 'assets/icons/bill.png',
                    title: 'bills',
                  ),
                  CardButton(
                    imageLink: 'assets/icons/credit-card.png',
                    title: 'pay',
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 45,
            ),

            // Transactions
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                children: const <Widget>[
                  CardListTile(
                    imageLink: 'assets/icons/monitoring.png',
                    tileName: 'Statistics',
                    tileSubname: 'Payment and Incoming',
                    marginBottom: 12,
                  ),
                  CardListTile(
                    imageLink: 'assets/icons/payment.png',
                    tileName: 'Transactions',
                    tileSubname: 'Transaction History',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.pink[200]!,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                size: 32,
                Icons.settings,
                color: Colors.pink[200]!,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          top: 35,
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          shape: const CircleBorder(),
          onPressed: () {},
          child: const Icon(
            Icons.wallet_sharp,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
