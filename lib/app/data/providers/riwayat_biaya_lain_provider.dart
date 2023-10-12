import 'package:get/get.dart';

import '../models/riwayat_biaya_lain_model.dart';

class RiwayatBiayaLainProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return RiwayatBiayaLain.fromJson(map);
      if (map is List)
        return map.map((item) => RiwayatBiayaLain.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<RiwayatBiayaLain?> getRiwayatBiayaLain(int id) async {
    final response = await get('riwayatbiayalain/$id');
    return response.body;
  }

  Future<Response<RiwayatBiayaLain>> postRiwayatBiayaLain(
          RiwayatBiayaLain riwayatbiayalain) async =>
      await post('riwayatbiayalain', riwayatbiayalain);
  Future<Response> deleteRiwayatBiayaLain(int id) async =>
      await delete('riwayatbiayalain/$id');
}
