// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../auth/bloc/auth/auth_bloc.dart' as _i13;
import '../../auth/bloc/login/login_bloc.dart' as _i7;
import '../../auth/bloc/register/register_cubit.dart' as _i10;
import '../../auth/repository/auth_repository.dart' as _i4;
import '../../auth/utils/auth_util.dart' as _i5;
import '../../profile/bloc/navigation/profile_navigation_cubit.dart' as _i9;
import '../navigation/bloc/navigation_bloc.dart' as _i14;
import '../router/router.dart' as _i3;
import '../util/global_util.dart' as _i6;
import '../util/navigation_util.dart' as _i8;
import '../util/shared_preferences_util.dart' as _i12;
import 'injector.dart' as _i15;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.AuthRepository>(() => _i4.AuthRepository());
    gh.lazySingleton<_i5.AuthUtil>(() => _i5.AuthUtil());
    gh.factory<_i6.GlobalUtil>(() => _i6.GlobalUtil());
    gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(gh<_i4.AuthRepository>()));
    gh.lazySingleton<_i8.NavigationUtil>(() => _i8.NavigationUtil());
    gh.lazySingleton<_i9.ProfileNavigationCubit>(
        () => _i9.ProfileNavigationCubit());
    gh.factory<_i10.RegisterCubit>(
        () => _i10.RegisterCubit(gh<_i4.AuthRepository>()));
    await gh.lazySingletonAsync<_i11.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i12.SharedPreferencesUtil>(
        () => _i12.SharedPreferencesUtil());
    gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(gh<_i5.AuthUtil>()));
    gh.factory<_i14.NavigationBloc>(
        () => _i14.NavigationBloc(gh<_i8.NavigationUtil>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
