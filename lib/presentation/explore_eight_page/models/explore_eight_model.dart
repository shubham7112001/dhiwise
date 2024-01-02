// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listthriller_item_model.dart';
import 'listio_one2_item_model.dart';
import 'listtitle_one2_item_model.dart';

/// This class defines the variables used in the [explore_eight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreEightModel extends Equatable {
  ExploreEightModel({
    this.listthrillerItemList = const [],
    this.listioOne2ItemList = const [],
    this.listtitleOne2ItemList = const [],
  });

  List<ListthrillerItemModel> listthrillerItemList;

  List<ListioOne2ItemModel> listioOne2ItemList;

  List<ListtitleOne2ItemModel> listtitleOne2ItemList;

  ExploreEightModel copyWith({
    List<ListthrillerItemModel>? listthrillerItemList,
    List<ListioOne2ItemModel>? listioOne2ItemList,
    List<ListtitleOne2ItemModel>? listtitleOne2ItemList,
  }) {
    return ExploreEightModel(
      listthrillerItemList: listthrillerItemList ?? this.listthrillerItemList,
      listioOne2ItemList: listioOne2ItemList ?? this.listioOne2ItemList,
      listtitleOne2ItemList:
          listtitleOne2ItemList ?? this.listtitleOne2ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listthrillerItemList, listioOne2ItemList, listtitleOne2ItemList];
}
