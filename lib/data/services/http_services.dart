import 'package:dio/dio.dart';
import 'package:xam/domain/entity/upload_photo_entity.dart';
import 'package:xam/presentation/utility/constant.dart' as constants;

class HttpServices {
  late Dio _dio;

  HttpServices() {
    _dio = Dio(BaseOptions(
      baseUrl: constants.baseUrl,
    ));

    initializeInterceptors();
  }

  Future postRequest(String endPoint, UploadPhotoEntity entity) async {
    Response response;

    try {
      response = await _dio.post(endPoint, data: entity);
    } on DioError catch (e) {
      throw Exception(e.message);
    }
    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper());
  }
}
