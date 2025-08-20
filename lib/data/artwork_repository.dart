import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:obras_de_arte/data/model/artwork.dart';

class ArtworkRepository {
  final String jsonPath;
  ArtworkRepository({this.jsonPath = 'assets/data/artworks.json'});
  @override
  Future<List<Artwork>> fetchArtworks() async {
    final jsonString = await rootBundle.loadString(jsonPath);
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => Artwork.fromJson(json)).toList();
  }
}
