// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mawadda_app/auth/repository/auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;
  LoginBloc(
    this.authRepository,
  ) : super(LoginState.initial()) {
    on<LoginFetchEv>((event, emit) async {
      emit(const LoginState.loading());
      final login = await authRepository.signInWithEmailAndPassword(
        event.email,
        event.password,
      );
      login.fold(
        (l) => emit(LoginState.failed(message: l.message)),
        (r) => emit(
          const LoginState.success(),
        ),
      );

      debugPrint('Credential : ${event.email} -- ${event.password}');
      debugPrint('Login : $login');
      // debugPrint('Login UID : ${login!.user!.uid}');
    });
  }
}
