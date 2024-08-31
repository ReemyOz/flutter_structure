import 'package:clean_architecture/core/resources/data_state.dart';
import 'package:clean_architecture/features/services_store/domain/entities/services_store_entity.dart';

abstract class ServicesStoreRepositories {
  Future<DataState<ServicesStoreEntity>> getStoreServices();
}