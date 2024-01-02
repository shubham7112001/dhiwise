// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'gridghost_item_model.dart';

/// This class defines the variables used in the [search_seven_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSevenTabContainerModel extends Equatable {
  SearchSevenTabContainerModel({this.gridghostItemList = const []});

  List<GridghostItemModel> gridghostItemList;

  SearchSevenTabContainerModel copyWith(
      {List<GridghostItemModel>? gridghostItemList}) {
    return SearchSevenTabContainerModel(
      gridghostItemList: gridghostItemList ?? this.gridghostItemList,
    );
  }

  @override
  List<Object?> get props => [gridghostItemList];
}
