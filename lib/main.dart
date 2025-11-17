import 'package:flutter/material.dart';
import 'package:test/views/home_view.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView(), theme: ThemeData.dark());
  }
}
