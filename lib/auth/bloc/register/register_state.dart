// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.success() = _Success;
  const factory RegisterState.failed({required String message}) = _Failed;
}
