import 'dart:io';
import 'package:flutter/material.dart';
import 'package:xam/presentation/architecture/cubit/upload_images_cubit.dart';
import 'package:xam/presentation/ui/new_diary_page.dart';
import 'package:xam/presentation/architecture/dependency_injection.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xam/presentation/utility/constant.dart' as constants;

void main() async {
  runApp(const XamApp());
  await di.init();
}

class XamApp extends StatefulWidget {
  const XamApp({Key? key}) : super(key: key);

  @override
  State<XamApp> createState() => _XamAppState();
}

class _XamAppState extends State<XamApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UploadImagesCubit>(
            create: (_) => di.sl<UploadImagesCubit>()),
      ],
      child: MaterialApp(
        title: constants.appName,
        debugShowCheckedModeBanner: false,
        routes: {
          constants.forwardSlash: (context) {
            return const NewDiaryPage();
          }
        },
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
