import 'package:flutter/cupertino.dart';

class Api{
  Api({@required this.apikey});
  final String apikey;
  static final String host= 'https://disease.sh/v3/covid-19/jhucsse ';
  Uri tokenUri()=>Uri(
    scheme:'https',
  host:host,
  path:'token',
  );
}