import 'package:dio/dio.dart';

class HttpClient {
  Dio _client;

  HttpClient() {
    _client = new Dio();
  }

  Future<void> _interceptor(String url) async {
    Map<String, dynamic> headers = {};
    print("URL: " + url.toString());
    headers['Content-Type'] = 'application/json';
    _client.options.headers = headers;
    _client.options.validateStatus = (_)=>true;
  }

  Future<Response> get(String url) async {
    await _interceptor(url);
    return _client.get(url);
  }

  Future<Response> post(String url, { dynamic body }) async {
    await _interceptor(url);
    return _client.post(url, data: body);
  } 

  Future<Response> put(String url, { dynamic body }) async {
    await _interceptor(url);
    return _client.put(url, data: body);
  } 

  Future<Response> delete(String url, { dynamic body }) async {
    await _interceptor(url);
    return _client.delete(url);
  } 
}
