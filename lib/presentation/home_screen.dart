import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Navigation 2.0 with go_router'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton.icon(onPressed: () => context.go('/second_screen'),
           icon: const Icon(Icons.pages),
            label: const Text('Нажать'),),
        ),),);
    
  }
}