import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/detail_page_ten_screen/models/detail_page_ten_model.dart';
part 'detail_page_ten_event.dart';
part 'detail_page_ten_state.dart';

/// A bloc that manages the state of a DetailPageTen according to the event that is dispatched to it.
class DetailPageTenBloc extends Bloc<DetailPageTenEvent, DetailPageTenState> {
  DetailPageTenBloc(DetailPageTenState initialState) : super(initialState) {
    on<DetailPageTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageTenInitialEvent event,
    Emitter<DetailPageTenState> emit,
  ) async {}
}
