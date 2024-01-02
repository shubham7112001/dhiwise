import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridghost_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/search_seven_tab_container_screen/models/search_seven_tab_container_model.dart';
part 'search_seven_tab_container_event.dart';
part 'search_seven_tab_container_state.dart';

/// A bloc that manages the state of a SearchSevenTabContainer according to the event that is dispatched to it.
class SearchSevenTabContainerBloc
    extends Bloc<SearchSevenTabContainerEvent, SearchSevenTabContainerState> {
  SearchSevenTabContainerBloc(SearchSevenTabContainerState initialState)
      : super(initialState) {
    on<SearchSevenTabContainerInitialEvent>(_onInitialize);
  }

  List<GridghostItemModel> fillGridghostItemList() {
    return List.generate(6, (index) => GridghostItemModel());
  }

  _onInitialize(
    SearchSevenTabContainerInitialEvent event,
    Emitter<SearchSevenTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchboxoneController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchSevenTabContainerModelObj:
            state.searchSevenTabContainerModelObj?.copyWith(
      gridghostItemList: fillGridghostItemList(),
    )));
  }
}
