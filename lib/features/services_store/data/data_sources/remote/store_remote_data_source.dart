import 'package:clean_architecture/features/services_store/data/models/service_model.dart';

abstract class StoreRemoteDataSource {
  Future<List<ServiceModel>?> getStoreData();
}
