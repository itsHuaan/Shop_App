import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/product_tile.dart';
import 'package:shop_app/models/cart.dart';
import 'package:shop_app/models/product.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  addingToCart(Product product) {
    Provider.of<Cart>(context, listen: false).addToCart(product);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Center(
          child: Column(
            children: [
              Text("Added to cart!"),
              SizedBox(height: 10),
              Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.red,
                size: 100.0,
              ),
            ],
          ),
        ),
        content: Text("Check your cart or continue shopping."),
      ),
    );
    // Future.delayed(
    //   const Duration(milliseconds: 2000),
    //   () {
    //     if (Navigator.canPop(context)) {
    //       Navigator.pop(context);
    //     }
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Republic of Gamers",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextField(
              cursorRadius: const Radius.circular(100.0),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hot Products",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Product product = value.getProducts()[index];
                return ProductTile(
                  product: product,
                  AddingToCart: () => addingToCart(product),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Divider(
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
