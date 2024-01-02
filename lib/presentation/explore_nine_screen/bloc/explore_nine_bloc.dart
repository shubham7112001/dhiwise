import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listthriller1_item_model.dart';
import '../models/listio_one3_item_model.dart';
import '../models/listtitle_one3_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/explore_nine_screen/models/explore_nine_model.dart';
part 'explore_nine_event.dart';
part 'explore_nine_state.dart';

/// A bloc that manages the state of a ExploreNine according to the event that is dispatched to it.
class ExploreNineBloc extends Bloc<ExploreNineEvent, ExploreNineState> {
  ExploreNineBloc(ExploreNineState initialState) : super(initialState) {
    on<ExploreNineInitialEvent>(_onInitialize);
  }

  List<Listthriller1ItemModel> fillListthriller1ItemList() {
    return List.generate(4, (index) => Listthriller1ItemModel());
  }

  List<ListioOne3ItemModel> fillListioOne3ItemList() {
    return List.generate(3, (index) => ListioOne3ItemModel());
  }

  List<ListtitleOne3ItemModel> fillListtitleOne3ItemList() {
    return List.generate(3, (index) => ListtitleOne3ItemModel());
  }

  _onInitialize(
    ExploreNineInitialEvent event,
    Emitter<ExploreNineState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        exploreNineModelObj: state.exploreNineModelObj?.copyWith(
            listthriller1ItemList: fillListthriller1ItemList(),
            listioOne3ItemList: fillListioOne3ItemList(),
            listtitleOne3ItemList: fillListtitleOne3ItemList())));
  }
}
