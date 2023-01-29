import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:xam/data/model/upload_photo_model.dart';
import 'package:xam/presentation/architecture/cubit/upload_images_cubit.dart';
import 'package:xam/presentation/utility/constant.dart' as constants;
import 'package:flutter/material.dart';
import 'package:xam/presentation/utility/constant.dart';
import 'package:xam/presentation/utility/size_config.dart';
import 'package:xam/presentation/widget/alert_dialog/alert_dialog.dart';
import 'package:xam/presentation/widget/custom_button.dart';
import 'package:xam/presentation/widget/custom_dropdown.dart';
import 'package:xam/presentation/widget/custom_text_form_field.dart';
import 'package:xam/presentation/widget/custom_text_style.dart';
import 'package:xam/presentation/widget/toast_widget.dart';

class NewDiaryPage extends StatefulWidget {
  const NewDiaryPage({Key? key}) : super(key: key);

  @override
  State<NewDiaryPage> createState() => _NewDiaryPageState();
}

class _NewDiaryPageState extends State<NewDiaryPage> {
  late TextEditingController _commentController = TextEditingController();
  late TextEditingController _dateController = TextEditingController();
  late TextEditingController _saController = TextEditingController();
  late TextEditingController _tcController = TextEditingController();
  late TextEditingController _tagsController = TextEditingController();
  late TextEditingController _saeController = TextEditingController();

  List<dynamic> imageList = [];
  List<File> images = [];
  final ImagePicker _picker = ImagePicker();
  bool _isChecked = false;
  double sizedBox = 0;

  String currentDate() {
    var now = DateTime.now();
    var formatter = DateFormat(constants.currentDateNumeric);
    String formattedDate = formatter.format(now);
    return formattedDate;
  }

  @override
  void initState() {
    _commentController = TextEditingController();
    _dateController = TextEditingController();
    _saController = TextEditingController();
    _tcController = TextEditingController();
    _tagsController = TextEditingController();
    _saeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _commentController.dispose();
    _dateController.dispose();
    _saController.dispose();
    _tcController.dispose();
    _tagsController.dispose();
    _saeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    sizedBox = SizeConfig.safeBlockHorizontal * 4.5;

    return SafeArea(
      child: Scaffold(
        backgroundColor: constants.pallet6,
        appBar: AppBar(
          backgroundColor: constants.pallet1,
          leading: const Icon(Icons.close),
          title: Text(
            constants.wordNewDiary,
            style: textLight6(context),
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      color: constants.pallet5,
      child: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: <Widget>[
              _topLayer(),
              Padding(
                padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3.6),
                child: Column(
                  children: <Widget>[
                    _addDiaryLayer(),
                    _addPhotoLayer(),
                    _commentsLayer(),
                    _detailsLayer(),
                    _linkEventLayer(),
                    _nextButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topLayer() => Container(
        color: constants.pallet6,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal * 3.06,
            vertical: SizeConfig.safeBlockHorizontal * 4.5,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.location_on_sharp,
                    color: constants.pallet2,
                    size: SizeConfig.safeBlockHorizontal * 6.3),
                SizedBox(width: SizeConfig.safeBlockHorizontal * 1.08),
                Text(
                  constants.wordTapNS,
                  style: textStyle3(context),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _addDiaryLayer() => Column(
        children: [
          SizedBox(height: sizedBox),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal * 1.08,
                vertical: SizeConfig.safeBlockHorizontal * 2.7),
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    constants.wordAddSiteDiary,
                    style: textBold6(context),
                  ),
                  const Icon(
                    Icons.help,
                    color: constants.pallet3,
                    size: 30.6,
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Widget _addPhotoLayer() => Column(
        children: [
          Card(
            elevation: 9,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildTextDivider(constants.wordAddPhotoSite),
                  images.isNotEmpty
                    ? SizedBox(
                        child: SizedBox(
                          width: double.infinity,
                          height: SizeConfig.safeBlockHorizontal * 27,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: images.length,
                            itemBuilder: (_, index) {
                              final data = images[index];
                              return Stack(
                                children: <Widget>[
                                  SizedBox(
                                    width: SizeConfig.safeBlockHorizontal * 20.7,
                                    height: SizeConfig.safeBlockHorizontal * 20.7,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: SizeConfig.safeBlockHorizontal * 4.05,
                                        top: SizeConfig.safeBlockHorizontal * 4.05),
                                      child: ClipRRect(
                                        clipBehavior: Clip.antiAlias,
                                        child: Image.file(
                                          data,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: SizeConfig.safeBlockHorizontal * 13,
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.cancel_rounded,
                                        color: Colors.black,
                                        size: SizeConfig.safeBlockHorizontal * 7.02),
                                      onTap: () {
                                        setState(() {
                                          images.removeAt(index);
                                        });
                                      },
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      )
                    : const SizedBox(),
                  CustomButton(
                    onPress: () {
                      requestPhotoPermission(context);
                    },
                    text: constants.wordAddPhoto,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: sizedBox),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Text(
                      //   constants.wordIncludePhotoGallery,
                      //   style: textColored3(
                      //       context, constants.pallet3, FontWeight.normal),
                      // ),
                      // Transform.scale(
                      //   scale: 1.2,
                      //   child: Checkbox(
                      //     value: _isChecked,
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _isChecked = value!;
                      //       });
                      //     },
                      //     checkColor: constants.pallet6,
                      //     activeColor: constants.pallet4,
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: sizedBox),
        ],
      );

  Widget _commentsLayer() => Column(
        children: [
          Card(
            elevation: 9,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildTextDivider(constants.capComments),
                  Text(
                    constants.capComments,
                    style: textColored3(
                        context, constants.pallet3, FontWeight.normal),
                  ),
                  CustomTextFormField(
                    key: const Key('commentField'),
                    controller: _commentController,
                    label: constants.empty,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: sizedBox),
        ],
      );

  Widget _detailsLayer() => Column(
        children: [
          Card(
            elevation: 9,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildTextDivider(constants.capDetails),
                  CustomDropdown(
                      text: currentDate(), itemList: constants.listDateItems),
                  const CustomDropdown(
                      text: constants.wordSelectArea, itemList: listSelectArea),
                  const CustomDropdown(
                      text: constants.wordTaskCategory,
                      itemList: listTaskCategory),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 4.5),
                  Text(
                    constants.capTags,
                    style: textColored3(
                        context, constants.pallet3, FontWeight.normal),
                  ),
                  CustomTextFormField(
                    key: const Key('tagsField'),
                    controller: _tagsController,
                    label: constants.empty,
                  ),
                  SizedBox(height: sizedBox),
                ],
              ),
            ),
          ),
          SizedBox(height: sizedBox),
        ],
      );

  Widget _linkEventLayer() => Column(
        children: [
          Card(
            elevation: 9,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal * 3.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Text(
                      //   constants.wordLinkToEvent,
                      //   style: textBold4(context),
                      // ),
                      // Transform.scale(
                      //   scale: 1.2,
                      //   child: Checkbox(
                      //     value: _isChecked,
                      //     onChanged: (bool? value) {
                      //       setState(() {
                      //         _isChecked = value!;
                      //       });
                      //     },
                      //     checkColor: constants.pallet6,
                      //     activeColor: constants.pallet4,
                      //   ),
                      // ),
                    ],
                  ),
                  const Divider(color: constants.pallet5, thickness: 3),
                  const CustomDropdown(
                      text: constants.wordSelectEvent,
                      itemList: constants.listSelectEvent),
                  SizedBox(height: sizedBox),
                ],
              ),
            ),
          ),
          SizedBox(height: sizedBox),
        ],
      );

  Widget _nextButton() => Column(
        children: <Widget>[
          CustomButton(
            key: const Key('nextButton'),
            onPress: () async {
              if (images.isEmpty) {
                showToastWidget(constants.errImageEmpty, constants.errorColor);
                return;
              }

              if (_commentController.text.isEmpty) {
                showToastWidget(
                    constants.errCommentEmpty, constants.errorColor);
                return;
              }
              if (_tagsController.text.isEmpty) {
                showToastWidget(constants.errTagsEmpty, constants.errorColor);
                return;
              }

              showLoadingDialog(context, constants.wordUploading);

              setState(() {
                for (int i = 0; i < images.length; i++) {
                  String image = images[i].toString();
                  imageList.add(image);
                }
              });
              BlocProvider.of<UploadImagesCubit>(context).uploadImagesData(
                context: context,
                model: UploadPhotoModel(
                  name: _commentController.text,
                  job: _tagsController.text,
                  images: imageList,
                ),
              );
            },
            text: constants.capNext,
          ),
          SizedBox(height: SizeConfig.safeBlockHorizontal * 11.7),
        ],
      );

  Widget _buildTextDivider(String text) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: textBold4(context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.safeBlockHorizontal * 3.06),
            child: const Divider(color: constants.pallet5, thickness: 3),
          ),
        ],
      );

  void requestPhotoPermission(context) async {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      selectMultipleImage();
    } else if (status.isDenied) {
      if (await Permission.storage.request().isGranted) {
        selectMultipleImage();
      }
    }
  }

  void selectMultipleImage() async {
    final List<XFile> pickedImages = await _picker.pickMultiImage();
    for (var element in pickedImages) {
      images.add(File(element.path));
    }

    for (int i = 0; i < images.length; i++) {
      if (i == images.length - 1) {
        setState(() {
          images;
        });
      }
    }
  }
}
