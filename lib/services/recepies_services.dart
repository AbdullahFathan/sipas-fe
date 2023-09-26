import 'package:dio/dio.dart';
import 'package:sipas/data/constants/base.dart';
import 'package:sipas/data/model/detail_recipes.dart';
import 'package:sipas/data/model/user.dart';

class RecepiesServices {
  final Dio _dio = Dio();

  Future fetchListRecepiesPrenangcy() async {
    listPrenangcyRecepies = [];
    try {
      var response = await _dio.post(
          "$BASE_URL/resep/makanan/kehamilan/judul?limit=10&page=0",
          data: {"target_resep": "ibu_hamil"},
          options: Options(
              headers: {'Authorization': 'Bearer ${currUser.jwtToken} '}));

      if (response.statusCode == 200 && response.data['data'] != null) {
        for (var item in response.data['data']) {
          Recepies dataJson = Recepies(
            id: item['id'],
            urlGambar: item['urlGambar'],
            judulResep: item['judulResep'],
            targetResep: item['targetResep'],
            targetUsiaResep: item['targetUsiaResep'],
            jenis: item['jenis'],
            bahanUtama: item['bahanUtama'],
            durasiMemasak: item['durasiMemasak'],
            bahanText: item['bahanText'],
            caraMembuatText: item['caraMembuatText'],
            nilaiGiziText: item['nilaiGiziText'],
            updatedAt: item['updatedAt'],
            isBook: false,
          );

          bool exists = favoritRecepies.any((existingData) {
            return existingData.urlGambar == dataJson.urlGambar &&
                existingData.id == dataJson.id;
          });

          if (exists) dataJson.isBook = true;

          listPrenangcyRecepies.add(dataJson);
        }
      }
    } catch (eror) {
      throw Exception(
          "There is eror at fetchListRecepiesPrenangcy: ${eror.toString()}");
    }
  }

  Future fetchListRecepiesChild() async {
    listChildRecepies = [];
    try {
      var response = await _dio.post(
          "$BASE_URL/resep/makanan/bayianak/judul?limit=10&page=0",
          data: {
            'target_resep': 'bayi_anak',
          },
          options: Options(
              headers: {'Authorization': 'Bearer ${currUser.jwtToken} '}));

      if (response.statusCode == 200 && response.data['data'] != null) {
        for (var item in response.data['data']) {
          Recepies dataJson = Recepies(
            id: item['id'],
            urlGambar: item['urlGambar'],
            judulResep: item['judulResep'],
            targetResep: item['targetResep'],
            targetUsiaResep: item['targetUsiaResep'],
            jenis: item['jenis'],
            bahanUtama: item['bahanUtama'],
            durasiMemasak: item['durasiMemasak'],
            bahanText: item['bahanText'],
            caraMembuatText: item['caraMembuatText'],
            nilaiGiziText: item['nilaiGiziText'],
            updatedAt: item['updatedAt'],
            isBook: false,
          );

          bool exists = favoritRecepies.any((existingData) {
            return existingData.urlGambar == dataJson.urlGambar &&
                existingData.id == dataJson.id;
          });

          if (exists) dataJson.isBook = true;

          listChildRecepies.add(dataJson);
        }
      }
    } catch (eror) {
      throw Exception(
          "There is eror at fetchListRecepiesChild: ${eror.toString()}");
    }
  }

  Future<List<Recepies>> searchByTitle(
    String recepiesFor,
    String titleRecepies,
  ) async {
    List<Recepies> dataApi = [];
    try {
      var response = await _dio.post(
          "$BASE_URL/resep/makanan/$recepiesFor/judul?limit=10&page=0",
          data: {
            'judulResep': titleRecepies,
          },
          options: Options(
              headers: {'Authorization': 'Bearer ${currUser.jwtToken} '}));

      if (response.statusCode == 200 && (response.data['data'] != null)) {
        for (var item in response.data['data']) {
          Recepies dataJson = Recepies(
            id: item['id'],
            urlGambar: item['urlGambar'],
            judulResep: item['judulResep'],
            targetResep: item['targetResep'],
            targetUsiaResep: item['targetUsiaResep'],
            jenis: item['jenis'],
            bahanUtama: item['bahanUtama'],
            durasiMemasak: item['durasiMemasak'],
            bahanText: item['bahanText'],
            caraMembuatText: item['caraMembuatText'],
            nilaiGiziText: item['nilaiGiziText'],
            updatedAt: item['updatedAt'],
            isBook: false,
          );

          bool exists = favoritRecepies.any((existingData) {
            return existingData.urlGambar == dataJson.urlGambar &&
                existingData.id == dataJson.id;
          });

          if (exists) dataJson.isBook = true;

          dataApi.add(dataJson);
        }
      }
    } catch (eror) {
      throw Exception("There is eror at searchByTitle: ${eror.toString()}");
    }
    return dataApi;
  }
}
