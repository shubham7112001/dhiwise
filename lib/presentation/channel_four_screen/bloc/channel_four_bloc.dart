import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/channel_four_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/channel_four_screen/models/channel_four_model.dart';
part 'channel_four_event.dart';
part 'channel_four_state.dart';

/// A bloc that manages the state of a ChannelFour according to the event that is dispatched to it.
class ChannelFourBloc extends Bloc<ChannelFourEvent, ChannelFourState> {
  ChannelFourBloc(ChannelFourState initialState) : super(initialState) {
    on<ChannelFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChannelFourInitialEvent event,
    Emitter<ChannelFourState> emit,
  ) async {
    emit(state.copyWith(
        channelFourModelObj: state.channelFourModelObj?.copyWith(
      channelFourItemList: fillChannelFourItemList(),
    )));
  }

  List<ChannelFourItemModel> fillChannelFourItemList() {
    return List.generate(4, (index) => ChannelFourItemModel());
  }
}
