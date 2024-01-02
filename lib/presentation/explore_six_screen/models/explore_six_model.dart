// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listturner_item_model.dart';
import 'listyesterday_item_model.dart';
import 'listio_one_item_model.dart';
import 'listtitle_one_item_model.dart';

/// This class defines the variables used in the [explore_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSixModel extends Equatable {
  ExploreSixModel({
    this.listturnerItemList = const [],
    this.listyesterdayItemList = const [],
    this.listioOneItemList = const [],
    this.listtitleOneItemList = const [],
  });

  List<ListturnerItemModel> listturnerItemList;

  List<ListyesterdayItemModel> listyesterdayItemList;

  List<ListioOneItemModel> listioOneItemList;

  List<ListtitleOneItemModel> listtitleOneItemList;

  ExploreSixModel copyWith({
    List<ListturnerItemModel>? listturnerItemList,
    List<ListyesterdayItemModel>? listyesterdayItemList,
    List<ListioOneItemModel>? listioOneItemList,
    List<ListtitleOneItemModel>? listtitleOneItemList,
  }) {
    return ExploreSixModel(
      listturnerItemList: listturnerItemList ?? this.listturnerItemList,
      listyesterdayItemList:
          listyesterdayItemList ?? this.listyesterdayItemList,
      listioOneItemList: listioOneItemList ?? this.listioOneItemList,
      listtitleOneItemList: listtitleOneItemList ?? this.listtitleOneItemList,
    );
  }

  @override
  List<Object?> get props => [
        listturnerItemList,
        listyesterdayItemList,
        listioOneItemList,
        listtitleOneItemList
      ];
}
