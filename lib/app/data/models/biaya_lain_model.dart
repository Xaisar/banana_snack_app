class BiayaLain {
  int? id;
  String? nama;
  String? gambar;
  int? stock;

  BiayaLain({this.id, this.nama, this.gambar, this.stock});

  BiayaLain.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    gambar = json['gambar'];
    stock = json['stock'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['gambar'] = gambar;
    data['stock'] = stock;
    return data;
  }
}
