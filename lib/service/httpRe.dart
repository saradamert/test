import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpRequest {



  static Future<void> _signOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }


  static Dio dio =
  Dio(BaseOptions(connectTimeout: 30000, receiveTimeout: 30000))
    ..httpClientAdapter
    ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'}
    ..interceptors.addAll([
      // PrettyDioLogger(
      //   requestHeader: false,
      //   requestBody: true,
      //   responseBody: false,
      //   responseHeader: false,
      //   compact: false,
      // ),
    ])
    ..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // เก็บ token
      // Do something before request is sent


      return handler.next(options); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: return `dio.resolve(response)`.
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: return `dio.reject(dioError)`
    }, onResponse: (response, handler) {
      // Do something with response data
      return handler.next(response); // continue
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: return `dio.reject(dioError)`
    }, onError: (DioError e, handler) {
      // Do something with response error
      final r = e.response;
      if (r?.statusCode == 401) {
        _signOut();
      }
      if (e.response == null) return handler.next(e);
      return handler.resolve(e.response!); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: return `dio.resolve(response)`.
    }));


  static Future<T> get<T>(String url,
      {required Map<String, dynamic> params,  Options? options}) async {
    final response =
    await dio.get<T>(url, queryParameters: params, options: options);
    print('response : $response');
    return response.data!;
  }

  static Future<T> post<T>(String url,
      {data, required Map<String, dynamic> params, required Options options}) async {
    Response<T> response = await dio.post<T>(url, data: data, queryParameters: params, options: options);
    print('response : $response');
    return response.data!;
  }

  static Future<T> put<T>(
      String url, {
        data,
        required Map<String, dynamic> params,
        required Options options,
      }) async {
    Response<T> response = await dio.put<T>(
      url,
      data: data,
      queryParameters: params,
      options: options,
    );
    print('response : $response');
    return response.data!;
  }

  static Future<T> patch<T>(
      String url, {
        data,
        required Map<String, dynamic> params,
        required Options options,
      }) async {
    Response<T> response = await dio.patch<T>(
      url,
      data: data,
      queryParameters: params,
      options: options,
    );
    print('response : $response');
    return response.data!;
  }

  static Future<T> delete<T>(
      String url, {
        data,
        required Map<String, dynamic> params,
        required Options options,
      }) async {
    Response<T> response = await dio.delete<T>(
      url,
      data: data,
      queryParameters: params,
      options: options,
    );
    print('response : $response');
    return response.data!;
  }

}