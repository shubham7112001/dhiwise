import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/dashboard_container1_screen/models/dashboard_container1_model.dart';
part 'dashboard_container1_event.dart';
part 'dashboard_container1_state.dart';

/// A bloc that manages the state of a DashboardContainer1 according to the event that is dispatched to it.
class DashboardContainer1Bloc
    extends Bloc<DashboardContainer1Event, DashboardContainer1State> {
  DashboardContainer1Bloc(DashboardContainer1State initialState)
      : super(initialState) {
    on<DashboardContainer1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardContainer1InitialEvent event,
    Emitter<DashboardContainer1State> emit,
  ) async {}
}
