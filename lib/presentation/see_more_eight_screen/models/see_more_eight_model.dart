// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'see_more_eight_item_model.dart';

/// This class defines the variables used in the [see_more_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreEightModel extends Equatable {
  SeeMoreEightModel({this.seeMoreEightItemList = const []});

  List<SeeMoreEightItemModel> seeMoreEightItemList;

  SeeMoreEightModel copyWith(
      {List<SeeMoreEightItemModel>? seeMoreEightItemList}) {
    return SeeMoreEightModel(
      seeMoreEightItemList: seeMoreEightItemList ?? this.seeMoreEightItemList,
    );
  }

  @override
  List<Object?> get props => [seeMoreEightItemList];
}
