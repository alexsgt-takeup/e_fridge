part of 'search_value_bloc.dart';

abstract class SearchValueState extends Equatable {
  const SearchValueState();
  
  @override
  List<Object> get props => [];
}

class SearchValueInitial extends SearchValueState {}
