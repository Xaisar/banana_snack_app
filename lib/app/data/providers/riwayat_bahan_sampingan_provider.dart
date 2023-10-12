import 'package:get/get.dart';

import '../models/riwayat_bahan_sampingan_model.dart';

class RiwayatBahanSampinganProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>)
        return RiwayatBahanSampingan.fromJson(map);
      if (map is List)
        return map.map((item) => RiwayatBahanSampingan.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<RiwayatBahanSampingan?> getRiwayatBahanSampingan(int id) async {
    final response = await get('riwayatbahansampingan/$id');
    return response.body;
  }

  Future<Response<RiwayatBahanSampingan>> postRiwayatBahanSampingan(
          RiwayatBahanSampingan riwayatbahansampingan) async =>
      await post('riwayatbahansampingan', riwayatbahansampingan);
  Future<Response> deleteRiwayatBahanSampingan(int id) async =>
      await delete('riwayatbahansampingan/$id');
}
