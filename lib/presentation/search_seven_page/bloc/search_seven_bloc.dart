import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/search_seven_page/models/search_seven_model.dart';
part 'search_seven_event.dart';
part 'search_seven_state.dart';

/// A bloc that manages the state of a SearchSeven according to the event that is dispatched to it.
class SearchSevenBloc extends Bloc<SearchSevenEvent, SearchSevenState> {
  SearchSevenBloc(SearchSevenState initialState) : super(initialState) {
    on<SearchSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchSevenInitialEvent event,
    Emitter<SearchSevenState> emit,
  ) async {}
}
