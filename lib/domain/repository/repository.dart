
import 'package:xam/data/model/upload_photo_model.dart';

abstract class Repository {
  Future<UploadPhotoModel> uploadImages(UploadPhotoModel model);
}