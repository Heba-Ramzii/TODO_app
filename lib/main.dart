 import 'package:bloc/bloc.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/shared/bloc_observer.dart';
import 'package:todo_app/shared/network/local/dio_helper.dart';
import 'package:todo_app/shared/styles/themes.dart';
import 'layout/todo_layout.dart';




void main()   {

  DioHelper.init();
   Bloc.observer = MyBlocObserver();



  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme:darkTheme,
      home:HomeLayout(), //startWidget,
      debugShowCheckedModeBanner: false,
    );
  }
}
