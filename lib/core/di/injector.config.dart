// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../../auth/bloc/bloc/auth_bloc.dart' as _i11;
import '../../auth/bloc/login/login_bloc.dart' as _i6;
import '../../auth/bloc/register/register_cubit.dart' as _i8;
import '../../auth/repository/auth_repository.dart' as _i3;
import '../../auth/utils/auth_util.dart' as _i4;
import '../../profile/bloc/navigation/profile_navigation_cubit.dart' as _i7;
import '../util/global_util.dart' as _i5;
import '../util/shared_preferences_util.dart' as _i10;
import 'injector.dart' as _i12;

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
    gh.lazySingleton<_i7.ProfileNavigationCubit>(
        () => _i7.ProfileNavigationCubit());
    gh.factory<_i8.RegisterCubit>(
        () => _i8.RegisterCubit(gh<_i3.AuthRepository>()));
    await gh.lazySingletonAsync<_i9.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i10.SharedPreferencesUtil>(
        () => _i10.SharedPreferencesUtil());
    gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i4.AuthUtil>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
