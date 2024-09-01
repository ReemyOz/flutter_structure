import 'package:clean_architecture/core/data/remote/remote_data_source.dart';
import 'package:clean_architecture/services/dio_service/dio_service.dart';

class RemoteDataSourceImpl<T> implements RemoteDataSource<T> {
  final DioService client;
  final T Function(String json) fromJson;

  RemoteDataSourceImpl({required this.client, required this.fromJson});

  @override
  Future<T> fetchData(String endPoint) async {
    final response = await client.get(endPoint);
    if (response.statusCode == 200) {
      return fromJson(response.data);
    } else {
      throw Exception('Failed to load data from $endPoint');
    }
  }

  @override
  Future<T> postData({required String endPoint, required T data}) async{
    final response = await client.post(endPoint);
    if (response.statusCode == 200) {
      return fromJson(response.data);
    } else {
      throw Exception('Failed to post data to $endPoint');
    }
  }
}
