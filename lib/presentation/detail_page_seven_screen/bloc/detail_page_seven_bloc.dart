import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/detail_page_seven_screen/models/detail_page_seven_model.dart';
part 'detail_page_seven_event.dart';
part 'detail_page_seven_state.dart';

/// A bloc that manages the state of a DetailPageSeven according to the event that is dispatched to it.
class DetailPageSevenBloc
    extends Bloc<DetailPageSevenEvent, DetailPageSevenState> {
  DetailPageSevenBloc(DetailPageSevenState initialState) : super(initialState) {
    on<DetailPageSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageSevenInitialEvent event,
    Emitter<DetailPageSevenState> emit,
  ) async {}
}
