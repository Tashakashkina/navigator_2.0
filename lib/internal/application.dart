import 'package:flutter/material.dart';
import 'package:navigator_2_0/presentation/details_screen.dart';
import '../presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

class NavigatorApp extends StatelessWidget {
    NavigatorApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) => MaterialApp.router(routeInformationParser: _router.routeInformationParser, routerDelegate: _router.routerDelegate, routeInformationProvider: _router.routeInformationProvider,
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),);
   
   final GoRouter _router = GoRouter(
     routes: <GoRoute>[
       GoRoute(
         routes: <GoRoute>[ // здесь прописываются второстепенные экраны
           GoRoute(path: 'second_screen',
           builder: (BuildContext context, GoRouterState state) => const DetailsScreenWidget())
         ], 
         path: '/', // путь главного экрана
         builder: (BuildContext context, GoRouterState state) => const HomeScreenWidget(),
       ),
     ],);
  
}