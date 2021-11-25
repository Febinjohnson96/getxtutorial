import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class ApiHelper{
  final String _baseUrl = "";
    final Map<String, String> _headers = {
    'Content-Type': 'application/json; charset=UTF-8'
  };
  http.Client client = http.Client();

Future<dynamic> get(String endpoint, Map<String,String>param) async{
  dynamic responseJson;
  try{
    var url= Uri.https(_baseUrl, endpoint,param);
    var response = await client.get(url,headers: _headers);
    responseJson = _returnResponse(response);
  }on SocketException{
    throw 'No Internet';
  }
  return responseJson;
}
Future<dynamic>post(String endpoint,Map<String, String> params) async{
  dynamic response;
  try{
    var url = Uri.https(_baseUrl, endpoint,params);
    var response = await client.post(url,headers: _headers,body: jsonEncode(params));
    response = _returnResponse(response);
  }on SocketException{
    throw 'Error ON API Helper';
    
  }
  return response;
}
  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw response.body.toString();
      case 401:
      case 403:
        throw response.body.toString();
      case 500:
      default:
        throw 
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}';
    }
  }
}