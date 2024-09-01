import 'package:clean_architecture/core/domain/data_state.dart';
import 'package:clean_architecture/features/services_store/domain/entities/services_store_entity.dart';

abstract class ServicesStoreRepository {
  Future<DataState<ServicesStoreEntity>> getStoreServices();
}