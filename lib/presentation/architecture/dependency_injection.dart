import 'package:get_it/get_it.dart';
import 'package:xam/data/remote/implement_remote_data_source.dart';
import 'package:xam/data/remote/remote_data_source.dart';
import 'package:xam/data/repository/implement_repository.dart';
import 'package:xam/data/services/http_services.dart';
import 'package:xam/domain/repository/repository.dart';
import 'package:xam/domain/usecase/upload_images_usecase.dart';
import 'package:xam/presentation/architecture/cubit/upload_images_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory<UploadImagesCubit>(() => UploadImagesCubit(
        uploadImagesUseCase: sl.call(),
      ));

  //UseCase
  sl.registerLazySingleton<UploadImagesUseCase>(
      () => UploadImagesUseCase(repository: sl.call()));

  //Remote
  sl.registerLazySingleton<RemoteDataSource>(
      () => ImplementRemoteDataSource(sl.call()));

  //Repository
  sl.registerLazySingleton<Repository>(
      () => ImplementRepository(remoteDataSource: sl.call()));

  //External
  final httpServices = HttpServices();
  sl.registerLazySingleton(() => httpServices);
}
