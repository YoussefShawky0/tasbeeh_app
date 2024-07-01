import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Add this line
import 'package:tasbeeh_app/cubit/tasbeeh_cubit.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasbeehCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(129, 139, 127, 71),
            foregroundColor: Color.fromARGB(255, 0, 0, 0),
            title: Text(
              'Tasbeeh App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
            ),
            leading: Icon(
              Icons.menu,
              size: 30,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.exit_to_app,
                  size: 30,
                ),
              ),
            ],
          ),
          // body: GridView.builder(
          //   gridDelegate:
          //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          //   itemBuilder: (context, index) {
          //     // return changing_widget(item: item[index]);
          //   },
          //   itemCount: item.length,
          // ),
        ),
      ),
    );
  }
}
