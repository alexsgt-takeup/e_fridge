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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        floatingActionButton: IconButton(
            onPressed: () async {
              print(await getIt<SqfliteRepository>()
                  .queryAllRows(DatabaseConstants.recipeTableName));
              // Map<String, dynamic> row = {
              //   DatabaseConstants.recipeColumnName: 'test',
              //   DatabaseConstants.recipeColumnNumberOfServings: 4,
              // };
              // final id = await getIt<SqfliteRepository>()
              //     .insert(DatabaseConstants.recipeTableName, row);
              // debugPrint('inserted row id: $id');
            },
            icon: const Icon(Icons.add)),
      ),
    );
  }
}
