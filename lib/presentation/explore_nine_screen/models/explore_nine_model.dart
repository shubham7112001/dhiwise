// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listthriller1_item_model.dart';
import 'listio_one3_item_model.dart';
import 'listtitle_one3_item_model.dart';

/// This class defines the variables used in the [explore_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreNineModel extends Equatable {
  ExploreNineModel({
    this.listthriller1ItemList = const [],
    this.listioOne3ItemList = const [],
    this.listtitleOne3ItemList = const [],
  });

  List<Listthriller1ItemModel> listthriller1ItemList;

  List<ListioOne3ItemModel> listioOne3ItemList;

  List<ListtitleOne3ItemModel> listtitleOne3ItemList;

  ExploreNineModel copyWith({
    List<Listthriller1ItemModel>? listthriller1ItemList,
    List<ListioOne3ItemModel>? listioOne3ItemList,
    List<ListtitleOne3ItemModel>? listtitleOne3ItemList,
  }) {
    return ExploreNineModel(
      listthriller1ItemList:
          listthriller1ItemList ?? this.listthriller1ItemList,
      listioOne3ItemList: listioOne3ItemList ?? this.listioOne3ItemList,
      listtitleOne3ItemList:
          listtitleOne3ItemList ?? this.listtitleOne3ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listthriller1ItemList, listioOne3ItemList, listtitleOne3ItemList];
}
