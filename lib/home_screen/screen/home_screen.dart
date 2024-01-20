import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbeh_bloc/home_screen/bloc/zikr_bloc.dart';
import 'package:tasbeh_bloc/home_screen/screen/zikr_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final tasbehList = [
    'Subhanalloh',
    'Alhamdulillah',
    'Allohu Akbar',
    'Astag`firulloh'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TASBEH', style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: tasbehList.length,
            itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BlocProvider(
                    create: (context) => ZikrBloc(),
                    child: ZikrScreen(title: tasbehList[index]))));
                },
                title: Center(child: Text(tasbehList[index], style: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold))),
              ),
            );
        }),
      ),
    );
  }
}
