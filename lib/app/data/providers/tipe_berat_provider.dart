import 'package:get/get.dart';

import '../models/tipe_berat_model.dart';

class TipeBeratProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return TipeBerat.fromJson(map);
      if (map is List)
        return map.map((item) => TipeBerat.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<TipeBerat?> getTipeBerat(int id) async {
    final response = await get('tipeberat/$id');
    return response.body;
  }

  Future<Response<TipeBerat>> postTipeBerat(TipeBerat tipeberat) async =>
      await post('tipeberat', tipeberat);
  Future<Response> deleteTipeBerat(int id) async =>
      await delete('tipeberat/$id');
}
