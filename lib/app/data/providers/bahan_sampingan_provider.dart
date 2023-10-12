import 'package:get/get.dart';

import '../models/bahan_sampingan_model.dart';

class BahanSampinganProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return BahanSampingan.fromJson(map);
      if (map is List)
        return map.map((item) => BahanSampingan.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<BahanSampingan?> getBahanSampingan(int id) async {
    final response = await get('bahansampingan/$id');
    return response.body;
  }

  Future<Response<BahanSampingan>> postBahanSampingan(
          BahanSampingan bahansampingan) async =>
      await post('bahansampingan', bahansampingan);
  Future<Response> deleteBahanSampingan(int id) async =>
      await delete('bahansampingan/$id');
}
