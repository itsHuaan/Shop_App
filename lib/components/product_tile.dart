import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    String price = product.price.toString();
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(
            product.imagePath,
            height: 250,
          ),
          Text(
            product.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product.description),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '  \$$price',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Colors.red,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
