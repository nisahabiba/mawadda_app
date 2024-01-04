//import 'package:bloc/bloc.dart';
//import 'package:equatable/equatable.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../utils/auth_util.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUtil authUtil;

  AuthBloc(
    this.authUtil,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) {},
    );
    on<_AppStarted>(
      (event, emit) async {
        final bool hasToken = await authUtil.hasAccessToken();

        if (hasToken) {
          emit(const AuthState.authenticated());
        } else {
          emit(const AuthState.unAuthenticated());
        }
      },
    );
    on<_LoggedIn>(
      (event, emit) async {
        print(event.accessToken);
        await authUtil.setAccessToken(event.accessToken);
        emit(const AuthState.authenticated());
      },
    );
    on<_LoggedOut>(
      (event, emit) async {
        debugPrint('AuthBloc LoggeedOut');
        await authUtil.deleteAccessToken();
        emit(const AuthState.unAuthenticated());
      },
    );
  }
}
