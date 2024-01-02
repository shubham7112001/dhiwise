import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/see_more_six_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/see_more_six_screen/models/see_more_six_model.dart';
part 'see_more_six_event.dart';
part 'see_more_six_state.dart';

/// A bloc that manages the state of a SeeMoreSix according to the event that is dispatched to it.
class SeeMoreSixBloc extends Bloc<SeeMoreSixEvent, SeeMoreSixState> {
  SeeMoreSixBloc(SeeMoreSixState initialState) : super(initialState) {
    on<SeeMoreSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeeMoreSixInitialEvent event,
    Emitter<SeeMoreSixState> emit,
  ) async {
    emit(state.copyWith(
        seeMoreSixModelObj: state.seeMoreSixModelObj
            ?.copyWith(seeMoreSixItemList: fillSeeMoreSixItemList())));
  }

  List<SeeMoreSixItemModel> fillSeeMoreSixItemList() {
    return List.generate(12, (index) => SeeMoreSixItemModel());
  }
}
