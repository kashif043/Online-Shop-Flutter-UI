import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/model/Product.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav.dart';
import 'description.dart';
import 'title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      CounterWithFav(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                TitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
