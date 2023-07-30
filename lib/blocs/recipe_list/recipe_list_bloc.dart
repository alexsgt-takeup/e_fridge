import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'recipe_list_event.dart';
part 'recipe_list_state.dart';

class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  RecipeListBloc() : super(RecipeListState.initial()) {
    on<RecipeListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
