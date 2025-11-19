import 'package:flutter/material.dart';
import 'package:test/models/product_model.dart';
import 'package:test/views/product_view.dart';
import 'package:test/widgets/product_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<ProductWidget> list = [
    ProductWidget(
      product: ProductModel(
        name: "black",
        image: "images/colors/color_black.png",
        number: 1,
        description: "This is black color",
      ),
    ),
    ProductWidget(
      product: ProductModel(
        name: "brown",
        image: "images/colors/color_brown.png",
        number: 2,
        description: "This is brown color",
      ),
    ),
    ProductWidget(
      product: ProductModel(
        name: "yellow",
        image: "images/colors/color_dusty_yellow.png",
        number: 3,
        description: "This is yellow color",
      ),
    ),
    ProductWidget(
      product: ProductModel(
        name: "gray",
        image: "images/colors/color_gray.png",
        number: 4,
        description: "This is gray color",
      ),
    ),
    ProductWidget(
      product: ProductModel(
        name: "green",
        image: "images/colors/color_green.png",
        number: 5,
        description: "This is green color",
      ),
    ),
    ProductWidget(
      product: ProductModel(
        name: "white",
        image: "images/colors/color_white.png",
        number: 6,
        description: "This is white color",
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("product list page")),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return ProductView(product: list[index].product);
                },
              ),
            ),
            child: list[index],
          );
        },
      ),
    );
  }
}
