import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/search_nine_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/search_nine_screen/models/search_nine_model.dart';
part 'search_nine_event.dart';
part 'search_nine_state.dart';

/// A bloc that manages the state of a SearchNine according to the event that is dispatched to it.
class SearchNineBloc extends Bloc<SearchNineEvent, SearchNineState> {
  SearchNineBloc(SearchNineState initialState) : super(initialState) {
    on<SearchNineInitialEvent>(_onInitialize);
  }

  List<SearchNineItemModel> fillSearchNineItemList() {
    return List.generate(9, (index) => SearchNineItemModel());
  }

  _onInitialize(
    SearchNineInitialEvent event,
    Emitter<SearchNineState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchNineModelObj: state.searchNineModelObj?.copyWith(
      searchNineItemList: fillSearchNineItemList(),
    )));
  }
}
