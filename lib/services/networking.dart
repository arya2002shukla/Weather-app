import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';
class NetworkPage{
  NetworkPage({@required this.url});
  final String url;
  Future getdata()async {
   Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedata = jsonDecode(data);
      return decodedata;
    }else{
      print(response.statusCode);
    }
  }
}