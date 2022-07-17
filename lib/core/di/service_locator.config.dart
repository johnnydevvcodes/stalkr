// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/i_account_repo.dart' as _i3;
import '../../infra/account/account_repo.dart' as _i4;
import '../../infra/service/i_user_service.dart' as _i5;
import '../../infra/service/user_service.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAccountRepo>(() => _i4.AccountRepo());
  gh.lazySingleton<_i5.IUserService>(() => _i6.UserService());
  return get;
}
