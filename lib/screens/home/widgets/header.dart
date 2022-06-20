import 'package:flutter/material.dart';
import 'package:kiosonline/screens/home/widgets/search_bar.dart';
import 'package:kiosonline/widgets/cart.dart';

import '../../../data/fake.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "KiosAPP",
                style: TextStyle(fontSize: 28.0),
              ),
              Cart(numberOfItemsInCart: Fake.numberOfItemsInCart),
            ],
          ),
          Text(
            "Get unique shoes ",
            style: TextStyle(fontSize: 15.0, height: 2, color: Colors.black38),
          ),
          SearchBar(),
        ],
      ),
    );
  }
}
