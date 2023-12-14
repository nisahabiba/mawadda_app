part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.authenticated() = _Authenticated;
}