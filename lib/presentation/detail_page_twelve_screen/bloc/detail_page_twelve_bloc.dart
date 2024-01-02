import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/detail_page_twelve_screen/models/detail_page_twelve_model.dart';
part 'detail_page_twelve_event.dart';
part 'detail_page_twelve_state.dart';

/// A bloc that manages the state of a DetailPageTwelve according to the event that is dispatched to it.
class DetailPageTwelveBloc
    extends Bloc<DetailPageTwelveEvent, DetailPageTwelveState> {
  DetailPageTwelveBloc(DetailPageTwelveState initialState)
      : super(initialState) {
    on<DetailPageTwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageTwelveInitialEvent event,
    Emitter<DetailPageTwelveState> emit,
  ) async {}
}
