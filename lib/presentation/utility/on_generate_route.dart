import 'package:flutter/material.dart';
import 'package:xam/presentation/ui/new_diary_page.dart';
import 'package:xam/presentation/utility/constant.dart' as constants;

class OnGenerateRoute {
  //TODO NOT YET USED, PROJECT HAS A SINGLE PAG
  static Route<dynamic> route(RouteSettings settings) {

    switch (settings.name) {
      case constants.forwardSlash: {
          return materialBuilder(widget: const NewDiaryPage());
        }

      case constants.routeNewDiary: {
        return materialBuilder(widget: const NewDiaryPage());
      }

      default:
        return materialBuilder(
          widget: const ErrorPage(),
        );
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(constants.capError),
      ),
      body: const Center(
        child: Text(constants.capError),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
