// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'see_more_seven_item_model.dart';

/// This class defines the variables used in the [see_more_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreSevenModel extends Equatable {
  SeeMoreSevenModel({this.seeMoreSevenItemList = const []});

  List<SeeMoreSevenItemModel> seeMoreSevenItemList;

  SeeMoreSevenModel copyWith(
      {List<SeeMoreSevenItemModel>? seeMoreSevenItemList}) {
    return SeeMoreSevenModel(
      seeMoreSevenItemList: seeMoreSevenItemList ?? this.seeMoreSevenItemList,
    );
  }

  @override
  List<Object?> get props => [seeMoreSevenItemList];
}
