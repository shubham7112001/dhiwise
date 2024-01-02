// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'channel_four_item_model.dart';

/// This class defines the variables used in the [channel_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelFourModel extends Equatable {
  ChannelFourModel({this.channelFourItemList = const []});

  List<ChannelFourItemModel> channelFourItemList;

  ChannelFourModel copyWith({List<ChannelFourItemModel>? channelFourItemList}) {
    return ChannelFourModel(
      channelFourItemList: channelFourItemList ?? this.channelFourItemList,
    );
  }

  @override
  List<Object?> get props => [channelFourItemList];
}
