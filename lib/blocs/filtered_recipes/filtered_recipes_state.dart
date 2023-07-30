part of 'filtered_recipes_bloc.dart';

abstract class FilteredRecipesState extends Equatable {
  const FilteredRecipesState();
  
  @override
  List<Object> get props => [];
}

class FilteredRecipesInitial extends FilteredRecipesState {}
