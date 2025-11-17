import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("category"), centerTitle: true),

      body: Center(child: Text("this is category view")),
    );
  }
}
