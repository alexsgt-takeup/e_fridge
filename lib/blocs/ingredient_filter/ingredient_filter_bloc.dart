import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'ingredient_filter_event.dart';
part 'ingredient_filter_state.dart';

class IngredientFilterBloc
    extends Bloc<IngredientFilterEvent, IngredientFilterState> {
  IngredientFilterBloc() : super(IngredientFilterState.initial()) {
    on<IngredientFilterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
