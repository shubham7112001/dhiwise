import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/see_more_seven_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/see_more_seven_screen/models/see_more_seven_model.dart';
part 'see_more_seven_event.dart';
part 'see_more_seven_state.dart';

/// A bloc that manages the state of a SeeMoreSeven according to the event that is dispatched to it.
class SeeMoreSevenBloc extends Bloc<SeeMoreSevenEvent, SeeMoreSevenState> {
  SeeMoreSevenBloc(SeeMoreSevenState initialState) : super(initialState) {
    on<SeeMoreSevenInitialEvent>(_onInitialize);
  }

  List<SeeMoreSevenItemModel> fillSeeMoreSevenItemList() {
    return List.generate(12, (index) => SeeMoreSevenItemModel());
  }

  _onInitialize(
    SeeMoreSevenInitialEvent event,
    Emitter<SeeMoreSevenState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        seeMoreSevenModelObj: state.seeMoreSevenModelObj
            ?.copyWith(seeMoreSevenItemList: fillSeeMoreSevenItemList())));
  }
}
