import 'dart:convert';

import 'package:get/get.dart';
import 'package:skripsi_yoi/app/data/models/movie_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  late var invoiceData = Rx<MovieModel?>(null);
  void onInit() {
     super.onInit();
  }

  void fetchAll() async {
    try {
      var response = http.get(
        Uri.parse("url")
      );

      if (response.statusCode == 200) {
        MovieModel result = MovieModel.fromJson(jsonDecode(response.body));
        invoiceData.value = result;
      } else {

      }

    } catch(e){
      print(e);
    }
  }

  void launchTrailer(String url) async {
    try {
      await launch(url);
    } catch (e) {
      print(e);
    }
  }
}
