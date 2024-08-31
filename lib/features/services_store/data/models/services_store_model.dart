import 'package:clean_architecture/features/services_store/data/models/service_model.dart';
import 'package:clean_architecture/features/services_store/domain/entities/services_store_entity.dart';

class ServicesStoreModel extends ServicesStoreEntity {
  const ServicesStoreModel({
    List<ServiceModel>? services,
  }) : super(services: services);

  factory ServicesStoreModel.fromJson(Map<String, dynamic> json) {
    return ServicesStoreModel(
      services: json['services']?.map((data) => ServiceModel.fromJson(data)),
    );
  }
}