import 'package:flutter/material.dart';
import 'package:test/models/product_model.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(children: [Image.asset(product.image), Text(product.name)]);
  }
}
