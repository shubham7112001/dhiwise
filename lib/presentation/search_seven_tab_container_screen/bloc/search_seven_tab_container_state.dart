// ignore_for_file: must_be_immutable

part of 'search_seven_tab_container_bloc.dart';

/// Represents the state of SearchSevenTabContainer in the application.
class SearchSevenTabContainerState extends Equatable {
  SearchSevenTabContainerState({
    this.searchboxoneController,
    this.searchSevenTabContainerModelObj,
  });

  TextEditingController? searchboxoneController;

  SearchSevenTabContainerModel? searchSevenTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchboxoneController,
        searchSevenTabContainerModelObj,
      ];
  SearchSevenTabContainerState copyWith({
    TextEditingController? searchboxoneController,
    SearchSevenTabContainerModel? searchSevenTabContainerModelObj,
  }) {
    return SearchSevenTabContainerState(
      searchboxoneController:
          searchboxoneController ?? this.searchboxoneController,
      searchSevenTabContainerModelObj: searchSevenTabContainerModelObj ??
          this.searchSevenTabContainerModelObj,
    );
  }
}
