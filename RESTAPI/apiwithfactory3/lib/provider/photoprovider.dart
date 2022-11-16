import '../models/photomodel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class PhotoProvider with ChangeNotifier {
  Photos? photodata;

  Future<Photos> loadphoto() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/'),
    );

    if (response.statusCode == 200) {
      Photos x = Photos.fromJson(jsonDecode(response.body));
      photodata = x;
      notifyListeners();
      return x;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<void> getvalues() async {
    final response = await loadphoto();
    photodata = response;
    notifyListeners();
  }

  Future<Photo> updateAlbum(Photo photo, int id) async {
    var x = json.encode(photo.toJson());
    final photodataIndex =
        photodata!.photos!.indexWhere((element) => element.id == id);
    print('updatevalue');

    // print(photodataIndex);
    // print(photodata!.photos![0].toString());
    // print(x);
    final responses = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: x,
    );
    print(responses.statusCode);
    print('before update');
    print(photodata!.photos![photodataIndex].title);
    // photodata!.photos![photodataIndex] = photo;
    // notifyListeners();
    print('new photo id');
    print(photo.title);
    // print('updated value');

    if (responses.statusCode == 200) {
      // print(photodata?.photos![0].id);
      print(responses.body);
      var updatevalue = Photo.fromJson(jsonDecode(responses.body));
      // photodata!.photos![photodataIndex] = photo;
      photodata!.photos![photodataIndex] = photo;
      // photodata!.photos![photodataIndex] = updatevalue;
      // notifyListeners();
      notifyListeners();
      print('object');
      print(photodata!.photos![photodataIndex].title);
      print('updated valuefsdfsfsf');

      print(updatevalue);
      return updatevalue;
    } else {
      throw Exception('Failed to update album.');
    }
  }
}