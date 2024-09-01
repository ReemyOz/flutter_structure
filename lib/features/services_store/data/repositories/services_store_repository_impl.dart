import 'package:clean_architecture/core/domain/data_state.dart';
import 'package:clean_architecture/features/services_store/data/models/services_store_model.dart';
import 'package:clean_architecture/features/services_store/domain/repositories/services_store_repository.dart';

class ServicesStoreRepositoryImpl implements ServicesStoreRepository {
  @override
  Future<DataState<ServicesStoreModel>> getStoreServices() {
    throw UnimplementedError();
  }
}