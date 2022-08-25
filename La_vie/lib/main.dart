import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/Screens/spalsh_screen.dart';
import 'package:la_vie/sharedpreferences.dart';
import 'package:la_vie/dio_healper.dart';
import 'bloc_observer.dart';

void main() async {
  BlocOverrides.runZoned(() {}, blocObserver: MyBlocObserver());

  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpalshScreen(),
    );
  }
}
