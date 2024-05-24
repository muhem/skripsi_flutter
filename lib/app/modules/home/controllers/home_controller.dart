import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  List listData = [].obs;
  void onInit() {
    //  movieProvider
    //  super.onInit();
  }

  void launchURL(String url) async {
    //const url = 'https://www.youtube.com/watch?v=MJPdA2xWfII';

    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }

    try {
      await launch(url);
    } catch (e) {
      print(e);
    }
  }
}
