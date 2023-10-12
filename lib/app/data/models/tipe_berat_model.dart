class TipeBerat {
  int? id;
  String? satuan;

  TipeBerat({this.id, this.satuan});

  TipeBerat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    satuan = json['satuan'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['satuan'] = satuan;
    return data;
  }
}
