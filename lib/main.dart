import 'package:e_fridge/constants/db_constants.dart';
import 'package:e_fridge/pages/home_page.dart';
import 'package:e_fridge/repository/sqflite_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.instance;
  getIt.registerSingleton<SqfliteRepository>(SqfliteRepository());
  await getIt<SqfliteRepository>().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final getIt = GetIt.instance;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mes recettes préférées',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: const HomePage(),

    );
  }
}
