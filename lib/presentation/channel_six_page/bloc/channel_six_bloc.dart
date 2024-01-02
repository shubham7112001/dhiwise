import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/channel_six_page/models/channel_six_model.dart';
part 'channel_six_event.dart';
part 'channel_six_state.dart';

/// A bloc that manages the state of a ChannelSix according to the event that is dispatched to it.
class ChannelSixBloc extends Bloc<ChannelSixEvent, ChannelSixState> {
  ChannelSixBloc(ChannelSixState initialState) : super(initialState) {
    on<ChannelSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChannelSixInitialEvent event,
    Emitter<ChannelSixState> emit,
  ) async {}
}
