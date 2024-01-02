import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/channel_five_screen/models/channel_five_model.dart';
part 'channel_five_event.dart';
part 'channel_five_state.dart';

/// A bloc that manages the state of a ChannelFive according to the event that is dispatched to it.
class ChannelFiveBloc extends Bloc<ChannelFiveEvent, ChannelFiveState> {
  ChannelFiveBloc(ChannelFiveState initialState) : super(initialState) {
    on<ChannelFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChannelFiveInitialEvent event,
    Emitter<ChannelFiveState> emit,
  ) async {}
}
