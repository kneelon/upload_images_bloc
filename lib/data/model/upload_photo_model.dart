import 'package:xam/domain/entity/upload_photo_entity.dart';
import 'package:xam/presentation/utility/constant.dart' as constants;

class UploadPhotoModel extends UploadPhotoEntity {
  const UploadPhotoModel({
    String name = constants.empty,
    String job = constants.empty,
    List<dynamic> images = const [],
    String id = constants.empty,
    DateTime? createdAt,
  }) : super(
          name: name,
          job: job,
          images: images,
          id: id,
          createdAt: createdAt,
        );

  factory UploadPhotoModel.fromJson(Map<String, dynamic> json) =>
      UploadPhotoModel(
        name: json[constants.name],
        job: json[constants.job],
        images: json[constants.images].toList(),
        id: json[constants.id],
        createdAt: json[constants.createdAt] == null
            ? null
            : DateTime.parse(json[constants.createdAt]),
      );

  Map<String, dynamic> toJson() => {
        constants.name: name,
        constants.job: job,
        constants.images: images,
        constants.id: id,
        constants.createdAt:
            createdAt == null ? null : createdAt!.toIso8601String(),
      };
}
