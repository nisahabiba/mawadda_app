part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success({required final String accessToken}) =
      _Success;
  const factory LoginState.failed({required String message}) = _Failed;
}
