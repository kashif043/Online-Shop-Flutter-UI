import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/home/details/details_screen.dart';
import 'package:online_shop/model/Product.dart';

import 'category.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
          child: Text(
            'Women',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Categories(),
        // ItemCard()
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    product: products[index],
                  ),
                ),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
