// ignore_for_file: must_be_immutable

part of 'search_ten_bloc.dart';

/// Represents the state of SearchTen in the application.
class SearchTenState extends Equatable {
  SearchTenState({
    this.searchController,
    this.searchTenModelObj,
  });

  TextEditingController? searchController;

  SearchTenModel? searchTenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchTenModelObj,
      ];
  SearchTenState copyWith({
    TextEditingController? searchController,
    SearchTenModel? searchTenModelObj,
  }) {
    return SearchTenState(
      searchController: searchController ?? this.searchController,
      searchTenModelObj: searchTenModelObj ?? this.searchTenModelObj,
    );
  }
}
