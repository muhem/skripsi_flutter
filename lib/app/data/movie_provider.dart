import 'package:get/get.dart';

class MovieProvider extends GetConnect {
  Future<Response<dynamic>> getAll () async {
    return await get('http://172.210.45.110/rekomendasi?userId=1');
  }
}
