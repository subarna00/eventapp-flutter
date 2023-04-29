import 'package:eventapp/di/di.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

@InjectableInit(asExtension: false)
void configureDependencies() => init(getIt);
