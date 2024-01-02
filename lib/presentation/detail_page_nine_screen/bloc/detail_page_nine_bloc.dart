import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/detail_page_nine_screen/models/detail_page_nine_model.dart';
part 'detail_page_nine_event.dart';
part 'detail_page_nine_state.dart';

/// A bloc that manages the state of a DetailPageNine according to the event that is dispatched to it.
class DetailPageNineBloc
    extends Bloc<DetailPageNineEvent, DetailPageNineState> {
  DetailPageNineBloc(DetailPageNineState initialState) : super(initialState) {
    on<DetailPageNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageNineInitialEvent event,
    Emitter<DetailPageNineState> emit,
  ) async {}
}
