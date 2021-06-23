import 'package:get_it/get_it.dart';

import 'services/rest.dart';
import 'services/contact_service.dart';

GetIt dependency = GetIt.instance;

void init() {
  // Services

  dependency.registerLazySingleton<RestService>(
    () => RestService(
        baseUrl:
            'http://192.168.43.40:3000'), // Change the IP address according to your own computer IP address
  );

  dependency.registerLazySingleton<ContactService>(() => ContactService());
}
