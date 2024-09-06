import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/cart_items.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => value.getUserCart().isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    "My Cart",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {
                        Product product = value.getUserCart()[index];
                        return CardItems(product: product);
                      },
                    ),
                  ),
                ],
              ),
            )
          : const Center(
              child: Text(
                "You haven't added anything to cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
    );
  }
}
