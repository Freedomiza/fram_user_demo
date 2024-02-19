import 'package:app_data/networking/app_dio.dart';
import 'package:app_data/networking/retrofit/faker_api.dart';
import 'package:app_domain/repositories/log_service.dart';

class ServiceManager {
  static ServiceManager? _singleton;

  late LogService loggerService;
  late FakerApi fakerApi;

  ServiceManager._internal();

  factory ServiceManager({
    required LogService loggerService,
    required String apiUrl,
  }) {
    if (_singleton != null) {
      return _singleton!;
    }
    _singleton = ServiceManager._internal();

    _singleton!.loggerService = loggerService;

    _singleton!.fakerApi = FakerApi(
      AppDio(
        loggerService,
        baseUrl: apiUrl,
      ),
    );

    return _singleton!;
  }
}
