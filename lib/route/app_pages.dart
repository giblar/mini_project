import 'package:get/get.dart';
import '../module/picture/view/detail_picture_view.dart';
import '../module/picture/view/list_picture_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: _Paths.PHOTOS,
      page: () => ListPictureView(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailPictureView(),
    ),
  ];
}
