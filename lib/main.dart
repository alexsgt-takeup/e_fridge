import 'package:e_fridge/blocs/recipe_list/recipe_list_bloc.dart';
import 'package:e_fridge/pages/home_page.dart';
import 'package:e_fridge/services/sqflite_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'repository/recipe_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.instance;

  getIt.registerSingleton<SqfliteService>(SqfliteService());
  await getIt<SqfliteService>().init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final getIt = GetIt.instance;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => RecipeRepository(
        database: getIt<SqfliteService>().getDatabaseInstance(),
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<RecipeListBloc>(
            create: (context) => RecipeListBloc(
              recipeRepository: context.read<RecipeRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
