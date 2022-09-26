import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';
import '../../presenters/http/protocols/index.dart';

adapterRouter(Controller controller) {
  return (ModularArguments req) async {
    dynamic request = {
      'body': req.data,
      'params': req.params,
      'query': req.queryParams
    };

    var httpResponse = await controller.handle(request);

    if (httpResponse['statusCode'] >= 200 &&
        httpResponse['statusCode'] <= 299) {
      return Response(httpResponse['statusCode'],
          body: jsonEncode(httpResponse['body']));
    }
    return Response(httpResponse['statusCode'],
        body: {"error": httpResponse['body']});
  };
}
