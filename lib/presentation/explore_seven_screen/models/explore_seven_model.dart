// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listio_one1_item_model.dart';
import 'listtitle_one1_item_model.dart';
import 'listaction_item_model.dart';

/// This class defines the variables used in the [explore_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSevenModel extends Equatable {
  ExploreSevenModel({
    this.listioOne1ItemList = const [],
    this.listtitleOne1ItemList = const [],
    this.listactionItemList = const [],
  });

  List<ListioOne1ItemModel> listioOne1ItemList;

  List<ListtitleOne1ItemModel> listtitleOne1ItemList;

  List<ListactionItemModel> listactionItemList;

  ExploreSevenModel copyWith({
    List<ListioOne1ItemModel>? listioOne1ItemList,
    List<ListtitleOne1ItemModel>? listtitleOne1ItemList,
    List<ListactionItemModel>? listactionItemList,
  }) {
    return ExploreSevenModel(
      listioOne1ItemList: listioOne1ItemList ?? this.listioOne1ItemList,
      listtitleOne1ItemList:
          listtitleOne1ItemList ?? this.listtitleOne1ItemList,
      listactionItemList: listactionItemList ?? this.listactionItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listioOne1ItemList, listtitleOne1ItemList, listactionItemList];
}
