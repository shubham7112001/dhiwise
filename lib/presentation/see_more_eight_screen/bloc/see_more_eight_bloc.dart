import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/see_more_eight_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/see_more_eight_screen/models/see_more_eight_model.dart';
part 'see_more_eight_event.dart';
part 'see_more_eight_state.dart';

/// A bloc that manages the state of a SeeMoreEight according to the event that is dispatched to it.
class SeeMoreEightBloc extends Bloc<SeeMoreEightEvent, SeeMoreEightState> {
  SeeMoreEightBloc(SeeMoreEightState initialState) : super(initialState) {
    on<SeeMoreEightInitialEvent>(_onInitialize);
  }

  List<SeeMoreEightItemModel> fillSeeMoreEightItemList() {
    return List.generate(12, (index) => SeeMoreEightItemModel());
  }

  _onInitialize(
    SeeMoreEightInitialEvent event,
    Emitter<SeeMoreEightState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        seeMoreEightModelObj: state.seeMoreEightModelObj
            ?.copyWith(seeMoreEightItemList: fillSeeMoreEightItemList())));
  }
}
