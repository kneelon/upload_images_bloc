import 'package:xam/presentation/utility/constant.dart' as constants;
import 'package:xam/data/model/upload_photo_model.dart';
import 'package:xam/data/remote/remote_data_source.dart';
import 'package:xam/data/services/http_services.dart';

class ImplementRemoteDataSource implements RemoteDataSource {
  final HttpServices httpServices;

  ImplementRemoteDataSource(this.httpServices);

  @override
  Future<UploadPhotoModel> uploadImages(UploadPhotoModel model) async {
    final response = await httpServices.postRequest(constants.apiUsers, model);

    var map = Map<String, dynamic>.from(response.data);

    var userData = UploadPhotoModel.fromJson(map);

    return userData;
  }
}
