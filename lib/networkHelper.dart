import 'dart:convert';

import 'package:classes/blogsApi.dart';
import 'package:http/http.dart' as apiHit;

//! Function To check if the API is working correctly
//? It will return JSON
hitApi(Uri uri) async {
  var response = await apiHit.get(blogsApi); //Gives me the JSON
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    return {
      'status': 'false',
      'Message': response.reasonPhrase
    };
  }
}
