import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/ingredient_model.dart';

part 'ingredient_list_event.dart';
part 'ingredient_list_state.dart';

class IngredientListBloc
    extends Bloc<IngredientListEvent, IngredientListState> {
  IngredientListBloc() : super(IngredientListState.initial()) {
    on<IngredientListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
