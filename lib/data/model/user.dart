class User {
  Data data;
  String jwtToken;

  User({
    required this.data,
    required this.jwtToken,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        data: Data.fromJson(json["data"]),
        jwtToken: json["jwtToken"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "jwtToken": jwtToken,
      };
}

class Data {
  int id;
  String namaIbu;
  String namaAyah;
  String email;
  bool isConnectedWithFaskes;

  Data({
    required this.id,
    required this.namaIbu,
    required this.namaAyah,
    required this.email,
    required this.isConnectedWithFaskes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        namaIbu: json["namaIbu"],
        namaAyah: json["namaAyah"],
        email: json["email"],
        isConnectedWithFaskes: json["isConnectedWithFaskes"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "namaIbu": namaIbu,
        "namaAyah": namaAyah,
        "email": email,
        "isConnectedWithFaskes": isConnectedWithFaskes,
      };
}

User currUser = User(
    data: Data(
        id: 0,
        namaIbu: '',
        namaAyah: '',
        email: '',
        isConnectedWithFaskes: false),
    jwtToken: '');
