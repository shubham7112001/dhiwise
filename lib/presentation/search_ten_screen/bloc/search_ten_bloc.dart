import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/populars_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/search_ten_screen/models/search_ten_model.dart';
part 'search_ten_event.dart';
part 'search_ten_state.dart';

/// A bloc that manages the state of a SearchTen according to the event that is dispatched to it.
class SearchTenBloc extends Bloc<SearchTenEvent, SearchTenState> {
  SearchTenBloc(SearchTenState initialState) : super(initialState) {
    on<SearchTenInitialEvent>(_onInitialize);
  }

  List<PopularsItemModel> fillPopularsItemList() {
    return List.generate(3, (index) => PopularsItemModel());
  }

  _onInitialize(
    SearchTenInitialEvent event,
    Emitter<SearchTenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchTenModelObj: state.searchTenModelObj?.copyWith(
      popularsItemList: fillPopularsItemList(),
    )));
  }
}
