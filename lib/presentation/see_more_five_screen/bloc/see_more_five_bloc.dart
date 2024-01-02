import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/see_more_five_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/see_more_five_screen/models/see_more_five_model.dart';
part 'see_more_five_event.dart';
part 'see_more_five_state.dart';

/// A bloc that manages the state of a SeeMoreFive according to the event that is dispatched to it.
class SeeMoreFiveBloc extends Bloc<SeeMoreFiveEvent, SeeMoreFiveState> {
  SeeMoreFiveBloc(SeeMoreFiveState initialState) : super(initialState) {
    on<SeeMoreFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeeMoreFiveInitialEvent event,
    Emitter<SeeMoreFiveState> emit,
  ) async {
    emit(state.copyWith(
        seeMoreFiveModelObj: state.seeMoreFiveModelObj
            ?.copyWith(seeMoreFiveItemList: fillSeeMoreFiveItemList())));
  }

  List<SeeMoreFiveItemModel> fillSeeMoreFiveItemList() {
    return List.generate(9, (index) => SeeMoreFiveItemModel());
  }
}
