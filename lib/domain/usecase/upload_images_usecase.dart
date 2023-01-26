import 'package:xam/data/model/upload_photo_model.dart';
import 'package:xam/domain/repository/repository.dart';

class UploadImagesUseCase {
  final Repository repository;

  UploadImagesUseCase({required this.repository});

  Future<UploadPhotoModel> call(UploadPhotoModel model) async {
    return repository.uploadImages(model);
  }
}
