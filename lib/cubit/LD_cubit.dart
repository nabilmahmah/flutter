import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/cubit/LD_state.dart';

class LDCubit extends Cubit<LdState> {
  LDCubit() : super(LdState());
  Future<void> saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('username', 'JohnDoe');
    await prefs.setInt('age', 25);
    await prefs.setDouble('height', 5.9);
    await prefs.setBool('isDarkMode', true);
    await prefs.setStringList('hobbies', ['Reading', 'Gaming', 'Coding']);
  }

  Future<void> removeData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
  }

  Future<void> clearData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
