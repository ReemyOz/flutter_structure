import 'package:clean_architecture/features/services_store/domain/service_entity.dart';
import 'package:equatable/equatable.dart';

class ServicesStoreEntity extends Equatable {
  final List<ServiceEntity>? services;

  const ServicesStoreEntity({required this.services});

  @override
  List<Object?> get props => [services];
}
