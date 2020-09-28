import 'package:originalpalv2/model/BrandResponseModel.dart';
import 'package:originalpalv2/resource/Repository.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class GetOneBrandData{
  final _repository = Repository();
  final _productFetcher = PublishSubject<BrandResponseModel>();
  Observable<BrandResponseModel> get getOneBrandData => _productFetcher.stream;

  fetchAllProduct() async {
    BrandResponseModel product = await _repository.fitchOneBrandData();
    _productFetcher.sink.add(product);
  }

  dispose() {
    _productFetcher.close();
  }

}
final getOneBrandData=GetOneBrandData();