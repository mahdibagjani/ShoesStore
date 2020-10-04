import 'dart:convert';

import 'package:dio/dio.dart';
import 'dart:async';

import 'package:originalpalv2/model/BrandResponseModel.dart';

class OriginalPalProvider {
  Dio dio = new Dio();

  Future<BrandResponseModel> fitchOneBrandData() async {
    Map<String, String> params = {
      'key': 'adidas',
    };
    final response = await dio.get("",
        queryParameters: params);
    print("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" +response.data.toString());

    if (response.statusCode == 200) {

      return BrandResponseModel.fromJson(response.data);

    }else {
      throw Exception('failddddd');
    }

  }
}
