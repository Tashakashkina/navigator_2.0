import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreenWidget extends StatelessWidget {
  const DetailsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         appBar: AppBar(
          elevation: 0,
          title: const Text('Navigation 2.0 with go_router'),
          centerTitle: true,),
       body: Center(
         child: ElevatedButton.icon(
           onPressed: () => context.go('/'), 
           icon: const Icon(Icons.arrow_back_sharp),
            label: const Text('Назад')),)));
  }
}