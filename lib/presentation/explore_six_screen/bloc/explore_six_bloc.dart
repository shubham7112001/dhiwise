import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listturner_item_model.dart';
import '../models/listyesterday_item_model.dart';
import '../models/listio_one_item_model.dart';
import '../models/listtitle_one_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/explore_six_screen/models/explore_six_model.dart';
part 'explore_six_event.dart';
part 'explore_six_state.dart';

/// A bloc that manages the state of a ExploreSix according to the event that is dispatched to it.
class ExploreSixBloc extends Bloc<ExploreSixEvent, ExploreSixState> {
  ExploreSixBloc(ExploreSixState initialState) : super(initialState) {
    on<ExploreSixInitialEvent>(_onInitialize);
  }

  List<ListturnerItemModel> fillListturnerItemList() {
    return List.generate(3, (index) => ListturnerItemModel());
  }

  List<ListyesterdayItemModel> fillListyesterdayItemList() {
    return List.generate(3, (index) => ListyesterdayItemModel());
  }

  List<ListioOneItemModel> fillListioOneItemList() {
    return List.generate(3, (index) => ListioOneItemModel());
  }

  List<ListtitleOneItemModel> fillListtitleOneItemList() {
    return List.generate(3, (index) => ListtitleOneItemModel());
  }

  _onInitialize(
    ExploreSixInitialEvent event,
    Emitter<ExploreSixState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        exploreSixModelObj: state.exploreSixModelObj?.copyWith(
            listturnerItemList: fillListturnerItemList(),
            listyesterdayItemList: fillListyesterdayItemList(),
            listioOneItemList: fillListioOneItemList(),
            listtitleOneItemList: fillListtitleOneItemList())));
  }
}
