// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listthe_item_model.dart';
import 'listtitle_item_model.dart';
import 'listi_kill_item_model.dart';
import 'listlukas_one_item_model.dart';
import 'categories_item_model.dart';
import 'list_item_model.dart';

/// This class defines the variables used in the [dashboard_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardContainerModel extends Equatable {
  DashboardContainerModel({
    this.listtheItemList = const [],
    this.listtitleItemList = const [],
    this.listiKillItemList = const [],
    this.listlukasOneItemList = const [],
    this.categoriesItemList = const [],
    this.listItemList = const [],
  });

  List<ListtheItemModel> listtheItemList;

  List<ListtitleItemModel> listtitleItemList;

  List<ListiKillItemModel> listiKillItemList;

  List<ListlukasOneItemModel> listlukasOneItemList;

  List<CategoriesItemModel> categoriesItemList;

  List<ListItemModel> listItemList;

  DashboardContainerModel copyWith({
    List<ListtheItemModel>? listtheItemList,
    List<ListtitleItemModel>? listtitleItemList,
    List<ListiKillItemModel>? listiKillItemList,
    List<ListlukasOneItemModel>? listlukasOneItemList,
    List<CategoriesItemModel>? categoriesItemList,
    List<ListItemModel>? listItemList,
  }) {
    return DashboardContainerModel(
      listtheItemList: listtheItemList ?? this.listtheItemList,
      listtitleItemList: listtitleItemList ?? this.listtitleItemList,
      listiKillItemList: listiKillItemList ?? this.listiKillItemList,
      listlukasOneItemList: listlukasOneItemList ?? this.listlukasOneItemList,
      categoriesItemList: categoriesItemList ?? this.categoriesItemList,
      listItemList: listItemList ?? this.listItemList,
    );
  }

  @override
  List<Object?> get props => [
        listtheItemList,
        listtitleItemList,
        listiKillItemList,
        listlukasOneItemList,
        categoriesItemList,
        listItemList
      ];
}
