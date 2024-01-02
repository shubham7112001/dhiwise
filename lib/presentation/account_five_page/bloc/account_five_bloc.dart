import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:shubham_tiwari_s_application1/presentation/account_five_page/models/account_five_model.dart';
part 'account_five_event.dart';
part 'account_five_state.dart';

/// A bloc that manages the state of a AccountFive according to the event that is dispatched to it.
class AccountFiveBloc extends Bloc<AccountFiveEvent, AccountFiveState> {
  AccountFiveBloc(AccountFiveState initialState) : super(initialState) {
    on<AccountFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountFiveInitialEvent event,
    Emitter<AccountFiveState> emit,
  ) async {}
}
