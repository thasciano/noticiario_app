import 'package:flutter_modular/flutter_modular.dart';
import 'package:noticiario_app/app/domain/models/noticia_model.dart';
import 'package:noticiario_app/app/domain/models/response_model.dart';
import 'package:noticiario_app/core/utils/connection.dart';
import 'package:noticiario_app/core/utils/http_client.dart';
import 'package:noticiario_app/core/values/strings.dart';

class HomeRepository extends Disposable {

  final HttpClient client;

  HomeRepository(this.client);
    
  Future<ResponseModel> callNoticias() async {
    ResponseModel response = ResponseModel();
    final hasConnection = await ConnectionHelper.hasConnection();

    if (hasConnection) {
      final retAuth = client.get(epListNoticias);
      await retAuth.then((res) {
        response.status = res.statusCode;
        response.message = res.statusMessage;
        List list = res.data;
        List<Noticia> lista =
            list.map<Noticia>((map) => Noticia.fromJson(map)).toList();
        response.data = lista;
      }).catchError((e) {
        response.status = 500;
        response.data = e;
        response.message = e.toString();
      });
    } else {
      response.message =
          "Internet indisponível. Por favor, verifique a sua conexão.";
    }

    return response;
  }

  @override
  void dispose() {}
}
