// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../../auth/bloc/auth/auth_bloc.dart' as _i12;
import '../../auth/bloc/login/login_bloc.dart' as _i6;
import '../../auth/bloc/register/register_cubit.dart' as _i9;
import '../../auth/repository/auth_repository.dart' as _i3;
import '../../auth/utils/auth_util.dart' as _i4;
import '../../profile/bloc/navigation/profile_navigation_cubit.dart' as _i8;
import '../navigation/bloc/navigation_bloc.dart' as _i13;
import '../util/global_util.dart' as _i5;
import '../util/navigation_util.dart' as _i7;
import '../util/shared_preferences_util.dart' as _i11;
import 'injector.dart' as _i14;

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
    gh.lazySingleton<_i3.AuthRepository>(() => _i3.AuthRepository());
    gh.lazySingleton<_i4.AuthUtil>(() => _i4.AuthUtil());
    gh.factory<_i5.GlobalUtil>(() => _i5.GlobalUtil());
    gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc(gh<_i3.AuthRepository>()));
    gh.lazySingleton<_i7.NavigationUtil>(() => _i7.NavigationUtil());
    gh.lazySingleton<_i8.ProfileNavigationCubit>(
        () => _i8.ProfileNavigationCubit());
    gh.factory<_i9.RegisterCubit>(
        () => _i9.RegisterCubit(gh<_i3.AuthRepository>()));
    await gh.lazySingletonAsync<_i10.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i11.SharedPreferencesUtil>(
        () => _i11.SharedPreferencesUtil());
    gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(gh<_i4.AuthUtil>()));
    gh.factory<_i13.NavigationBloc>(
        () => _i13.NavigationBloc(gh<_i7.NavigationUtil>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
