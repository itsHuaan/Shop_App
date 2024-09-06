import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class CardItems extends StatefulWidget {
  Product product;
  CardItems({
    super.key,
    required this.product,
  });

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
  @override
  Widget build(BuildContext context) {
    String price = widget.product.price.toString();
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Image.asset(widget.product.imagePath),
        title: Text(
          widget.product.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('\$$price'),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
