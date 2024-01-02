import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listio_one1_item_model.dart';
import '../models/listtitle_one1_item_model.dart';
import '../models/listaction_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/explore_seven_screen/models/explore_seven_model.dart';
part 'explore_seven_event.dart';
part 'explore_seven_state.dart';

/// A bloc that manages the state of a ExploreSeven according to the event that is dispatched to it.
class ExploreSevenBloc extends Bloc<ExploreSevenEvent, ExploreSevenState> {
  ExploreSevenBloc(ExploreSevenState initialState) : super(initialState) {
    on<ExploreSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreSevenInitialEvent event,
    Emitter<ExploreSevenState> emit,
  ) async {
    emit(state.copyWith(
        exploreSevenModelObj: state.exploreSevenModelObj?.copyWith(
      listioOne1ItemList: fillListioOne1ItemList(),
      listtitleOne1ItemList: fillListtitleOne1ItemList(),
      listactionItemList: fillListactionItemList(),
    )));
  }

  List<ListioOne1ItemModel> fillListioOne1ItemList() {
    return List.generate(3, (index) => ListioOne1ItemModel());
  }

  List<ListtitleOne1ItemModel> fillListtitleOne1ItemList() {
    return List.generate(3, (index) => ListtitleOne1ItemModel());
  }

  List<ListactionItemModel> fillListactionItemList() {
    return List.generate(3, (index) => ListactionItemModel());
  }
}
