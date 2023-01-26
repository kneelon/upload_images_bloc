import 'package:equatable/equatable.dart';

class UploadPhotoEntity extends Equatable {
  final String? name;
  final String? job;
  final List<dynamic>? images;
  final String? id;
  final DateTime? createdAt;

  const UploadPhotoEntity({
    this.name,
    this.job,
    this.images,
    this.id,
    this.createdAt,
  });

  @override
  List<Object?> get props => [
        name,
        job,
        images,
        id,
        createdAt == null ? null : createdAt!.toIso8601String(),
      ];
}
