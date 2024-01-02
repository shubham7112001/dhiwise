import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listthe_item_model.dart';
import '../models/listtitle_item_model.dart';
import '../models/listi_kill_item_model.dart';
import '../models/listlukas_one_item_model.dart';
import '../models/categories_item_model.dart';
import '../models/list_item_model.dart';
import 'package:shubham_tiwari_s_application1/presentation/dashboard_container_page/models/dashboard_container_model.dart';
part 'dashboard_container_event.dart';
part 'dashboard_container_state.dart';

/// A bloc that manages the state of a DashboardContainer according to the event that is dispatched to it.
class DashboardContainerBloc
    extends Bloc<DashboardContainerEvent, DashboardContainerState> {
  DashboardContainerBloc(DashboardContainerState initialState)
      : super(initialState) {
    on<DashboardContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardContainerInitialEvent event,
    Emitter<DashboardContainerState> emit,
  ) async {
    emit(state.copyWith(
        dashboardContainerModelObj: state.dashboardContainerModelObj?.copyWith(
            listtheItemList: fillListtheItemList(),
            listtitleItemList: fillListtitleItemList(),
            listiKillItemList: fillListiKillItemList(),
            listlukasOneItemList: fillListlukasOneItemList(),
            categoriesItemList: fillCategoriesItemList(),
            listItemList: fillListItemList())));
  }

  List<ListtheItemModel> fillListtheItemList() {
    return List.generate(4, (index) => ListtheItemModel());
  }

  List<ListtitleItemModel> fillListtitleItemList() {
    return List.generate(4, (index) => ListtitleItemModel());
  }

  List<ListiKillItemModel> fillListiKillItemList() {
    return List.generate(4, (index) => ListiKillItemModel());
  }

  List<ListlukasOneItemModel> fillListlukasOneItemList() {
    return List.generate(4, (index) => ListlukasOneItemModel());
  }

  List<CategoriesItemModel> fillCategoriesItemList() {
    return List.generate(4, (index) => CategoriesItemModel());
  }

  List<ListItemModel> fillListItemList() {
    return List.generate(4, (index) => ListItemModel());
  }
}
