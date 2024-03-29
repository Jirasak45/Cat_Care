import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/food.dart';

class CartItem extends StatefulWidget {
  Food food;
  CartItem({
    super.key,
    required this.food,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.food);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.food.imagePath),
        title: Text(widget.food.name),
        subtitle: Text(widget.food.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
