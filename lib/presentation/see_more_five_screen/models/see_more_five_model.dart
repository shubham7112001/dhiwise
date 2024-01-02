// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'see_more_five_item_model.dart';

/// This class defines the variables used in the [see_more_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreFiveModel extends Equatable {
  SeeMoreFiveModel({this.seeMoreFiveItemList = const []});

  List<SeeMoreFiveItemModel> seeMoreFiveItemList;

  SeeMoreFiveModel copyWith({List<SeeMoreFiveItemModel>? seeMoreFiveItemList}) {
    return SeeMoreFiveModel(
      seeMoreFiveItemList: seeMoreFiveItemList ?? this.seeMoreFiveItemList,
    );
  }

  @override
  List<Object?> get props => [seeMoreFiveItemList];
}
