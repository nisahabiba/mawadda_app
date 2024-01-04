// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../repository/auth_repository.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(
    this.authRepository,
  ) : super(RegisterState.initial());

  final AuthRepository authRepository;

  Future<void> addUser({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(const RegisterState.loading());

    final authRegister =
        await authRepository.registerWithEmailAndPassword(email, password);

    authRegister.fold(
      (l) => emit(
        RegisterState.failed(
          message: l.message,
        ),
      ),
      (r) async {
        final doAddUser =
            await authRepository.addUser(name: name, email: email);

        doAddUser.fold(
          (l) => emit(
            RegisterState.failed(
              message: l.message,
            ),
          ),
          (r) => emit(
            const RegisterState.success(),
          ),
        );
      },
    );

    debugPrint('Register :$name -- $email');
  }
}
