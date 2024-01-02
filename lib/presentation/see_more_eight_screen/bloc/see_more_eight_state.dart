// ignore_for_file: must_be_immutable

part of 'see_more_eight_bloc.dart';

/// Represents the state of SeeMoreEight in the application.
class SeeMoreEightState extends Equatable {
  SeeMoreEightState({
    this.searchController,
    this.seeMoreEightModelObj,
  });

  TextEditingController? searchController;

  SeeMoreEightModel? seeMoreEightModelObj;

  @override
  List<Object?> get props => [
        searchController,
        seeMoreEightModelObj,
      ];
  SeeMoreEightState copyWith({
    TextEditingController? searchController,
    SeeMoreEightModel? seeMoreEightModelObj,
  }) {
    return SeeMoreEightState(
      searchController: searchController ?? this.searchController,
      seeMoreEightModelObj: seeMoreEightModelObj ?? this.seeMoreEightModelObj,
    );
  }
}
