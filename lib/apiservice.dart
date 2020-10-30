import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:app1/api.dart';
import 'dart:ui';

class Apiservice{
  Apiservice(this.api);
  final Api api;
  Future<String> getAccessToken() async{
final response=await http.post(
  api.tokenUri().toString(),
  headers:{'Authorization':'Basic ${api.apikey}'},
);
if(response.statusCode==200){
  final data=json.decode(response.body);
  final accessToken=data['access_token'];
  if(accessToken!=null){
    return accessToken;
  }
}print('Request ${api.tokenUri()} failed\nResponse:${response.statusCode} ${response.reasonPhrase}');
  throw response;
  }
}