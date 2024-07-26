import 'package:core/http_client/custom_http_client.dart';
import 'package:core/http_client/custom_http_client_impl.dart';
import 'package:core/util/keys.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static GetIt getIt = GetIt.instance;

  static void init() {
    // client rest
    getIt.registerLazySingleton<CustomHttpClient>(() =>
        CustomHttpClientImpl(header: {"X-ListenAPI-Key": listenNoteApiKey}));
  }
}
