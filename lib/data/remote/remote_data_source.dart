import 'package:xam/data/model/upload_photo_model.dart';

abstract class RemoteDataSource {
  Future<UploadPhotoModel> uploadImages(UploadPhotoModel model);
}
