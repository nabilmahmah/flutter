import 'package:flutter/material.dart';
import 'package:test/widgets/category.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Category> categoryList = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      categoryList.add(const Category());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), centerTitle: true),
      body: ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: categoryList[index],
          );
        },
      ),
    );
  }
}
