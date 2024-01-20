import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/zikr_bloc.dart';


class ZikrScreen extends StatefulWidget {
  const ZikrScreen({super.key, required this.title});

  final String title;

  @override
  State<ZikrScreen> createState() => _ZikrScreenState();
}

class _ZikrScreenState extends State<ZikrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title,
            style: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
      ),
      body: InkWell(
        onTap: () {
          BlocProvider.of<ZikrBloc>(context).add(ZikrAddEvent());
        },
        child: Ink(
          color: Colors.transparent,
          child: BlocBuilder<ZikrBloc, ZikrState>(
            builder: (context, state) {
              if (state is ZikrAddState) {
                return Center(child: Text('${state.count}',
                    style: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold)));
              }
              if (state is ZikrRefreshState) {
                return Center(child: Text('${state.count}',
                    style: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold)));
              }
              return const Center(child: Text('0',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)));
            },
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            BlocProvider.of<ZikrBloc>(context).add(ZikrRefreshEvent());
          },
          child: const Icon(Icons.refresh, size: 50),
        ),
      ),
    );
  }
}
