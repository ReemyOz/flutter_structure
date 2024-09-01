import 'package:clean_architecture/core/data/remote/remote_data_resource_impl.dart';
import 'package:clean_architecture/features/services_store/data/data_sources/remote/store_remote_data_source.dart';
import 'package:clean_architecture/features/services_store/data/models/service_model.dart';

class StoreRemoteDataSourceImpl extends RemoteDataSourceImpl implements StoreRemoteDataSource {
  StoreRemoteDataSourceImpl({required super.client, required super.fromJson});

  @override
  Future<List<ServiceModel>?> getStoreData() {
    throw UnimplementedError();
  }
}
