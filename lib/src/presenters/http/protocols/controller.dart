import 'http.dart';

abstract class Controller {
  Future<HttpResponse> handle(HttpRequest httpRequest);
}
