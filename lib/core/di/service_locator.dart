import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stalkr/core/di/service_locator.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
@injectableInit
void setupLocator() => $initGetIt(locator);

//TODO PRERESOLVES
//..DBS
//..FIRESTORAGE
//..FIREAuth
//..Firestore
//..AwsService
//..INTERNET Check
//..LOCATION
//..LOCAL STORAGE
//todo build environment
