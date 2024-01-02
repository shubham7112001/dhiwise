// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'populars_item_model.dart';

/// This class defines the variables used in the [search_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTenModel extends Equatable {
  SearchTenModel({this.popularsItemList = const []});

  List<PopularsItemModel> popularsItemList;

  SearchTenModel copyWith({List<PopularsItemModel>? popularsItemList}) {
    return SearchTenModel(
      popularsItemList: popularsItemList ?? this.popularsItemList,
    );
  }

  @override
  List<Object?> get props => [popularsItemList];
}
