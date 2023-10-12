import 'package:get/get.dart';

import '../models/riwayat_bahan_baku_model.dart';

class RiwayatBahanBakuProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return RiwayatBahanBaku.fromJson(map);
      if (map is List)
        return map.map((item) => RiwayatBahanBaku.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<RiwayatBahanBaku?> getRiwayatBahanBaku(int id) async {
    final response = await get('riwayatbahanbaku/$id');
    return response.body;
  }

  Future<Response<RiwayatBahanBaku>> postRiwayatBahanBaku(
          RiwayatBahanBaku riwayatbahanbaku) async =>
      await post('riwayatbahanbaku', riwayatbahanbaku);
  Future<Response> deleteRiwayatBahanBaku(int id) async =>
      await delete('riwayatbahanbaku/$id');
}
