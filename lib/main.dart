import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/cubit/LD_cubit.dart';
import 'package:test/views/have_data.dart';
// import 'package:test/views/home_view.dart';
import 'package:test/views/image_picker.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LDCubit(),
      child: MaterialApp(
        home: ImagePickerView(),
        // initialRoute: ,
        // routes: {

        //   '/imagepicker': (context) => ImagePickerView(),
        //   '/havedata': (context) => HaveData(),},
      ),
    );
  }
}
