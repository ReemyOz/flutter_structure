abstract class RemoteDataSource<T> {
  Future<T> fetchData(String endPoint);

  Future<T> postData({required String endPoint, required T data});
}