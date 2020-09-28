import 'package:originalpalv2/model/BrandResponseModel.dart';
import 'package:originalpalv2/resource/OriginalPalProvider.dart';

import 'dart:async';
class Repository{
  final originalPalProvider =OriginalPalProvider();
  Future<BrandResponseModel> fitchOneBrandData()=>originalPalProvider.fitchOneBrandData();
}