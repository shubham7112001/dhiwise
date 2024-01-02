import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listthriller_item_model.dart';
import '../models/listio_one2_item_model.dart';
import '../models/listtitle_one2_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/explore_eight_page/models/explore_eight_model.dart';
part 'explore_eight_event.dart';
part 'explore_eight_state.dart';

/// A bloc that manages the state of a ExploreEight according to the event that is dispatched to it.
class ExploreEightBloc extends Bloc<ExploreEightEvent, ExploreEightState> {
  ExploreEightBloc(ExploreEightState initialState) : super(initialState) {
    on<ExploreEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreEightInitialEvent event,
    Emitter<ExploreEightState> emit,
  ) async {
    emit(state.copyWith(
        exploreEightModelObj: state.exploreEightModelObj?.copyWith(
            listthrillerItemList: fillListthrillerItemList(),
            listioOne2ItemList: fillListioOne2ItemList(),
            listtitleOne2ItemList: fillListtitleOne2ItemList())));
  }

  List<ListthrillerItemModel> fillListthrillerItemList() {
    return List.generate(4, (index) => ListthrillerItemModel());
  }

  List<ListioOne2ItemModel> fillListioOne2ItemList() {
    return List.generate(3, (index) => ListioOne2ItemModel());
  }

  List<ListtitleOne2ItemModel> fillListtitleOne2ItemList() {
    return List.generate(3, (index) => ListtitleOne2ItemModel());
  }
}
