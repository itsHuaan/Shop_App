import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart.dart';
import 'package:shop_app/models/product.dart';

class CardItems extends StatefulWidget {
  final Product product;
  const CardItems({
    super.key,
    required this.product,
  });

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
  void removeItem() => Provider.of<Cart>(context, listen: false).removeFromCart(widget.product);
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
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('\$$price'),
        trailing: IconButton(
          onPressed: removeItem,
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
