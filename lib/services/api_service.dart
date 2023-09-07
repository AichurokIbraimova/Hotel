import 'package:dio/dio.dart';
import 'package:tz2/constants/api_const.dart';
import 'package:tz2/models/hotel_model.dart';
import 'package:tz2/models/register_model.dart';
import 'package:tz2/models/room_model.dart';

class ApiService {
  final Dio _client = Dio();
  get dio => null;
  Future<HotelModel?> getUsers() async {
    try {
      var response = await _client.get(ApiConstHotel.url());
if (response.statusCode == 200 || response.statusCode == 201) {
  return HotelModel.fromJson(response.data);
}
    } catch (e) {
      print(e);
      
    }
    return null;
  }

  Future<List<Room>?> getUsers1() async {
    try {
      var response = await _client.get(ApiConstRoom.uri());
      if (response.statusCode == 200 || response.statusCode == 201) {
        List rooms = response.data['rooms'];
        return rooms.map((e) => Room.fromJson(e)).toList();
      }
    } catch (e) {
      print(e);
    }
    return null;
  }


Future<RegisterModel?> getUsers2() async {
    try {
      var response = await _client.get(ApiConstRegister.url());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return RegisterModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

}






