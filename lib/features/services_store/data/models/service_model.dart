import 'package:clean_architecture/features/services_store/domain/entities/service_entity.dart';

class ServiceModel extends ServiceEntity {
  const ServiceModel({required super.id, required super.name, required super.image});

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
    );
  }

  @override
  List<Object?> get props => [id, name, image];
}
