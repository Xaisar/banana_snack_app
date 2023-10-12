import 'package:get/get.dart';

import '../models/biaya_lain_model.dart';

class BiayaLainProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return BiayaLain.fromJson(map);
      if (map is List)
        return map.map((item) => BiayaLain.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<BiayaLain?> getBiayaLain(int id) async {
    final response = await get('biayalain/$id');
    return response.body;
  }

  Future<Response<BiayaLain>> postBiayaLain(BiayaLain biayalain) async =>
      await post('biayalain', biayalain);
  Future<Response> deleteBiayaLain(int id) async =>
      await delete('biayalain/$id');
}
