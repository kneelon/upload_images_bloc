import 'dart:io';
import 'package:flutter/material.dart';
import 'package:xam/data/model/upload_photo_model.dart';
import 'package:xam/presentation/ui/new_diary_page.dart';
import 'package:xam/presentation/utility/constant.dart' as constants;
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:xam/domain/usecase/upload_images_usecase.dart';
import 'package:xam/presentation/widget/alert_dialog/alert_dialog.dart';
import 'package:xam/presentation/widget/toast_widget.dart';
part 'upload_images_state.dart';

class UploadImagesCubit extends Cubit<UploadImagesState> {
  final UploadImagesUseCase uploadImagesUseCase;

  UploadImagesCubit({
    required this.uploadImagesUseCase,
  }) : super(UploadImagesInitial());

  Future<void> uploadImagesData(
      {required context, required UploadPhotoModel entity}) async {
    emit(UploadImagesLoading());

    try {
      final response = await uploadImagesUseCase.call(entity);
      debugPrint(
          '${constants.capSuccess} $response'); //<-- print SUCCESS response
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NewDiaryPage()));
      showToastWidget(constants.wordUploadSuccess, constants.appBarColor);
      emit(UploadImagesSuccess());
    } on SocketException catch (e) {
      buildAlertDialog(context, constants.errorUploadData,
          '$e ${constants.errSocketException}');
      emit(UploadImagesFailure());
    } catch (e) {
      buildAlertDialog(context, constants.errorUploadData, '$e');
      emit(UploadImagesFailure());
    }
  }
}
