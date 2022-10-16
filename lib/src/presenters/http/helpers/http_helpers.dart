// ignore: file_names

import '../protocols/http.dart';

HttpResponse ok({dynamic body}) {
  return {"statusCode": 200, "body": body};
}

HttpResponse badRequest({dynamic body}) {
  return {"statusCode": 400, "body": body};
}

HttpResponse serverError({dynamic body}) {
  return {"statusCode": 500, "body": body};
}
