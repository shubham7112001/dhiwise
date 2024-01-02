// ignore_for_file: must_be_immutable

part of 'search_six_bloc.dart';

/// Represents the state of SearchSix in the application.
class SearchSixState extends Equatable {
  SearchSixState({
    this.searchboxoneController,
    this.searchSixModelObj,
  });

  TextEditingController? searchboxoneController;

  SearchSixModel? searchSixModelObj;

  @override
  List<Object?> get props => [
        searchboxoneController,
        searchSixModelObj,
      ];
  SearchSixState copyWith({
    TextEditingController? searchboxoneController,
    SearchSixModel? searchSixModelObj,
  }) {
    return SearchSixState(
      searchboxoneController:
          searchboxoneController ?? this.searchboxoneController,
      searchSixModelObj: searchSixModelObj ?? this.searchSixModelObj,
    );
  }
}
