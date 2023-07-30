import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_value_event.dart';
part 'search_value_state.dart';

class SearchValueBloc extends Bloc<SearchValueEvent, SearchValueState> {
  SearchValueBloc() : super(SearchValueInitial()) {
    on<SearchValueEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
