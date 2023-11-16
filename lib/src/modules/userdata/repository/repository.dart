import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

class UserRepository {
  Future<String?> fetchAlbums() async {
    try {
      return await rootBundle.loadString('assets/user_data.json');
    } catch (e) {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    }
  }
}
