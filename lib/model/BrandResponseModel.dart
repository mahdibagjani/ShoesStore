class BrandResponseModel {
  List<Brand> brand;

  BrandResponseModel({this.brand});

  BrandResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['brand'] != null) {
      brand = new List<Brand>();
      json['brand'].forEach((v) {
        brand.add(new Brand.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.brand != null) {
      data['brand'] = this.brand.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Brand {
  int id;
  String code;
  String name;
  String slug;
  String price;
  String description;
  String state;
  String metaKeywords;
  String metaDescription;
  String sex;
  String color;
  String mainPicture;
  String pictures;
  String createdAt;
  String updatedAt;
  String deletedAt;
  String brandId;
  String discountPrice;
  String type;
  String barcode;
  String sold;
  String trend;
  String categoryId;
  String summary;
  String siteMainPicture;
  String sitePictures;
  String shoeRun;
  String middleLayer;
  String shoeSoles;
  String application;
  String sitePictureOrder;
  String appPictureOrder;
  String transparent;
  String metaTitle;
  String giffile;
  String giffileState;
  String altImages;
  String titleImages;
  String titlePage;
  String allAltImages;
  String couponcode;
  String couponsell;
  String onesize;
  String urlName;
  String enable;

  Brand(
      {this.id,
        this.code,
        this.name,
        this.slug,
        this.price,
        this.description,
        this.state,
        this.metaKeywords,
        this.metaDescription,
        this.sex,
        this.color,
        this.mainPicture,
        this.pictures,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.brandId,
        this.discountPrice,
        this.type,
        this.barcode,
        this.sold,
        this.trend,
        this.categoryId,
        this.summary,
        this.siteMainPicture,
        this.sitePictures,
        this.shoeRun,
        this.middleLayer,
        this.shoeSoles,
        this.application,
        this.sitePictureOrder,
        this.appPictureOrder,
        this.transparent,
        this.metaTitle,
        this.giffile,
        this.giffileState,
        this.altImages,
        this.titleImages,
        this.titlePage,
        this.allAltImages,
        this.couponcode,
        this.couponsell,
        this.onesize,
        this.urlName,
        this.enable});

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    slug = json['slug'];
    price = json['price'];
    description = json['description'];
    state = json['state'];
    metaKeywords = json['meta_keywords'];
    metaDescription = json['meta_description'];
    sex = json['sex'];
    color = json['color'];
    mainPicture = json['main_picture'];
    pictures = json['pictures'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    brandId = json['brand_id'];
    discountPrice = json['discount_price'];
    type = json['type'];
    barcode = json['barcode'];
    sold = json['sold'];
    trend = json['trend'];
    categoryId = json['category_id'];
    summary = json['summary'];
    siteMainPicture = json['site_main_picture'];
    sitePictures = json['site_pictures'];
    shoeRun = json['shoe_run'];
    middleLayer = json['middle_layer'];
    shoeSoles = json['shoe_soles'];
    application = json['application'];
    sitePictureOrder = json['site_picture_order'];
    appPictureOrder = json['app_picture_order'];
    transparent = json['transparent'];
    metaTitle = json['meta_title'];
    giffile = json['giffile'];
    giffileState = json['giffile_state'];
    altImages = json['alt_images'];
    titleImages = json['title_images'];
    titlePage = json['title_page'];
    allAltImages = json['all_alt_images'];
    couponcode = json['couponcode'];
    couponsell = json['couponsell'];
    onesize = json['onesize'];
    urlName = json['Url_Name'];
    enable = json['Enable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['price'] = this.price;
    data['description'] = this.description;
    data['state'] = this.state;
    data['meta_keywords'] = this.metaKeywords;
    data['meta_description'] = this.metaDescription;
    data['sex'] = this.sex;
    data['color'] = this.color;
    data['main_picture'] = this.mainPicture;
    data['pictures'] = this.pictures;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['brand_id'] = this.brandId;
    data['discount_price'] = this.discountPrice;
    data['type'] = this.type;
    data['barcode'] = this.barcode;
    data['sold'] = this.sold;
    data['trend'] = this.trend;
    data['category_id'] = this.categoryId;
    data['summary'] = this.summary;
    data['site_main_picture'] = this.siteMainPicture;
    data['site_pictures'] = this.sitePictures;
    data['shoe_run'] = this.shoeRun;
    data['middle_layer'] = this.middleLayer;
    data['shoe_soles'] = this.shoeSoles;
    data['application'] = this.application;
    data['site_picture_order'] = this.sitePictureOrder;
    data['app_picture_order'] = this.appPictureOrder;
    data['transparent'] = this.transparent;
    data['meta_title'] = this.metaTitle;
    data['giffile'] = this.giffile;
    data['giffile_state'] = this.giffileState;
    data['alt_images'] = this.altImages;
    data['title_images'] = this.titleImages;
    data['title_page'] = this.titlePage;
    data['all_alt_images'] = this.allAltImages;
    data['couponcode'] = this.couponcode;
    data['couponsell'] = this.couponsell;
    data['onesize'] = this.onesize;
    data['Url_Name'] = this.urlName;
    data['Enable'] = this.enable;
    return data;
  }
}
