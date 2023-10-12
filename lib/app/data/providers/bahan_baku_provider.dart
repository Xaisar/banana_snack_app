import 'package:get/get.dart';

import '../models/bahan_baku_model.dart';

class BahanBakuProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return BahanBaku.fromJson(map);
      if (map is List)
        return map.map((item) => BahanBaku.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<BahanBaku?> getBahanBaku(int id) async {
    final response = await get('bahanbaku/$id');
    return response.body;
  }

  Future<Response<BahanBaku>> postBahanBaku(BahanBaku bahanbaku) async =>
      await post('bahanbaku', bahanbaku);
  Future<Response> deleteBahanBaku(int id) async =>
      await delete('bahanbaku/$id');
}
