// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'search_nine_item_model.dart';

/// This class defines the variables used in the [search_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchNineModel extends Equatable {
  SearchNineModel({this.searchNineItemList = const []});

  List<SearchNineItemModel> searchNineItemList;

  SearchNineModel copyWith({List<SearchNineItemModel>? searchNineItemList}) {
    return SearchNineModel(
      searchNineItemList: searchNineItemList ?? this.searchNineItemList,
    );
  }

  @override
  List<Object?> get props => [searchNineItemList];
}
