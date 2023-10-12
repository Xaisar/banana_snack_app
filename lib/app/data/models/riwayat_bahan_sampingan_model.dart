class RiwayatBahanSampingan {
  int? id;
  String? tipe;
  int? berat;
  String? tanggal;
  int? riwayatStock;

  RiwayatBahanSampingan(
      {this.id, this.tipe, this.berat, this.tanggal, this.riwayatStock});

  RiwayatBahanSampingan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tipe = json['tipe'];
    berat = json['berat'];
    tanggal = json['tanggal'];
    riwayatStock = json['riwayat_stock'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['tipe'] = tipe;
    data['berat'] = berat;
    data['tanggal'] = tanggal;
    data['riwayat_stock'] = riwayatStock;
    return data;
  }
}
