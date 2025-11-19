import 'package:flutter/material.dart';
import 'package:test/models/product_model.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          children: [
            Image.asset(product.image),
            SizedBox(height: 20),
            Text(
              "Product Number: ${product.number}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(product.description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
