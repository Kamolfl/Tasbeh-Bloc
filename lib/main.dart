import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_screen/bloc/zikr_bloc.dart';
import 'home_screen/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ZikrBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                color: Colors.blue,
                titleTextStyle: TextStyle(color: Colors.white),
                iconTheme: IconThemeData(color: Colors.white)
            )
        ),
        home: HomeScreen(),
      ),
    );
  }
}
