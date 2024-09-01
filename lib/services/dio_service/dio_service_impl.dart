import 'package:clean_architecture/services/dio_service/dio_service.dart';
import 'package:dio/dio.dart';

class DioServiceImpl extends DioService {
  final Dio _dio;

  DioServiceImpl({required Dio? dio}) : _dio = dio ?? Dio();

  @override
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await _dio.get(url, queryParameters: queryParameters, options: options, cancelToken: cancelToken, onReceiveProgress: onReceiveProgress);
    } on DioException catch (e) {
      throw Exception('Dio error : ${e.message}');
    }
  }

  @override
  Future<Response> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await _dio.post(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
      );
    } on DioException catch (e) {
      throw Exception('Dio error : ${e.message}');
    }
  }
}
