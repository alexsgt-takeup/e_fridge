import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'filtered_recipes_event.dart';
part 'filtered_recipes_state.dart';

class FilteredRecipesBloc
    extends Bloc<FilteredRecipesEvent, FilteredRecipesState> {
  FilteredRecipesBloc() : super(FilteredRecipesInitial()) {
    on<FilteredRecipesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
