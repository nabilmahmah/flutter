import 'package:flutter/material.dart';
import 'package:test/views/category_view.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CategoryView()),
      ),
      child: Container(
        height: 80,
        color: Colors.orange,
        child: const Center(
          child: Text(
            'Category',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
