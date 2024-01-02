// ignore_for_file: must_be_immutable

part of 'search_seven_bloc.dart';

/// Represents the state of SearchSeven in the application.
class SearchSevenState extends Equatable {
  SearchSevenState({this.searchSevenModelObj});

  SearchSevenModel? searchSevenModelObj;

  @override
  List<Object?> get props => [
        searchSevenModelObj,
      ];
  SearchSevenState copyWith({SearchSevenModel? searchSevenModelObj}) {
    return SearchSevenState(
      searchSevenModelObj: searchSevenModelObj ?? this.searchSevenModelObj,
    );
  }
}
