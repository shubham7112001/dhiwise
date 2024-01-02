// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'see_more_six_item_model.dart';

/// This class defines the variables used in the [see_more_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreSixModel extends Equatable {
  SeeMoreSixModel({this.seeMoreSixItemList = const []});

  List<SeeMoreSixItemModel> seeMoreSixItemList;

  SeeMoreSixModel copyWith({List<SeeMoreSixItemModel>? seeMoreSixItemList}) {
    return SeeMoreSixModel(
      seeMoreSixItemList: seeMoreSixItemList ?? this.seeMoreSixItemList,
    );
  }

  @override
  List<Object?> get props => [seeMoreSixItemList];
}
