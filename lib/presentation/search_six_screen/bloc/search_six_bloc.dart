import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/search_six_screen/models/search_six_model.dart';
part 'search_six_event.dart';
part 'search_six_state.dart';

/// A bloc that manages the state of a SearchSix according to the event that is dispatched to it.
class SearchSixBloc extends Bloc<SearchSixEvent, SearchSixState> {
  SearchSixBloc(SearchSixState initialState) : super(initialState) {
    on<SearchSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchSixInitialEvent event,
    Emitter<SearchSixState> emit,
  ) async {
    emit(state.copyWith(searchboxoneController: TextEditingController()));
  }
}
