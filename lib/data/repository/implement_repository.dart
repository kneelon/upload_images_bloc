
import 'package:xam/data/model/upload_photo_model.dart';
import 'package:xam/data/remote/remote_data_source.dart';
import 'package:xam/domain/repository/repository.dart';

class ImplementRepository implements Repository {
  final RemoteDataSource remoteDataSource;

  ImplementRepository({required this.remoteDataSource});

  @override
  Future<UploadPhotoModel> uploadImages(UploadPhotoModel model) async {
    return remoteDataSource.uploadImages(model);
  }


}