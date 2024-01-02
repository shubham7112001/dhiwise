import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/detail_page_eleven_screen/models/detail_page_eleven_model.dart';
part 'detail_page_eleven_event.dart';
part 'detail_page_eleven_state.dart';

/// A bloc that manages the state of a DetailPageEleven according to the event that is dispatched to it.
class DetailPageElevenBloc
    extends Bloc<DetailPageElevenEvent, DetailPageElevenState> {
  DetailPageElevenBloc(DetailPageElevenState initialState)
      : super(initialState) {
    on<DetailPageElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageElevenInitialEvent event,
    Emitter<DetailPageElevenState> emit,
  ) async {}
}
