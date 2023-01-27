
import 'package:xam/data/model/upload_photo_model.dart';
import 'package:xam/domain/entity/upload_photo_entity.dart';

abstract class Repository {
  Future<UploadPhotoEntity> uploadImages(UploadPhotoModel model);
}