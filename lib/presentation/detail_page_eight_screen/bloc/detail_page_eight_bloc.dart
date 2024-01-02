import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/detail_page_eight_screen/models/detail_page_eight_model.dart';
part 'detail_page_eight_event.dart';
part 'detail_page_eight_state.dart';

/// A bloc that manages the state of a DetailPageEight according to the event that is dispatched to it.
class DetailPageEightBloc
    extends Bloc<DetailPageEightEvent, DetailPageEightState> {
  DetailPageEightBloc(DetailPageEightState initialState) : super(initialState) {
    on<DetailPageEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageEightInitialEvent event,
    Emitter<DetailPageEightState> emit,
  ) async {}
}
