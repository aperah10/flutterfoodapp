// To parse this JSON data, do
//
//     final home = homeFromJson(jsonString);

import 'dart:convert';

import 'package:http/http.dart';

Home homeFromJson(String str) => Home.fromJson(json.decode(str));

// String homeToJson(Home data) => json.encode(data.toJson());

class Home {
  Home({
    this.status,
    this.category,
    required this.sliderd,
    required this.productDeal,
    this.bestSeller,
    this.special,
    this.featured,
    this.city,
    this.combo,
    this.cuisine,
    this.serviceCity,
    this.message,
  });

  final String? status;

  final List<SliderD> sliderd;
  final List<ProductDeal> productDeal;
  final List<dynamic>? bestSeller;
  final List<dynamic>? combo;
  final List<dynamic>? special;
  final List<dynamic>? featured;
  final List<dynamic>? city;
  final List<dynamic>? category;
  final List<dynamic>? cuisine;
  final List<dynamic>? serviceCity;
  final String? message;

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        status: json["status"] == null ? null : json["status"],
        category: json["category"] == null
            ? null
            : List<dynamic>.from(json["category"].map((x) => x)),
        sliderd:
            List<SliderD>.from(json["sliderd"].map((x) => SliderD.fromJson(x))),
        productDeal: List<ProductDeal>.from(
            json["product_deal"].map((x) => ProductDeal.fromJson(x))),
        bestSeller: json["best_seller"] == null
            ? null
            : List<dynamic>.from(json["best_seller"].map((x) => x)),
        special: json["special"] == null
            ? null
            : List<dynamic>.from(json["special"].map((x) => x)),
        featured: json["featured"] == null
            ? null
            : List<dynamic>.from(json["featured"].map((x) => x)),
        city: json["city"] == null
            ? null
            : List<dynamic>.from(json["city"].map((x) => x)),
        combo: json["combo"] == null
            ? null
            : List<dynamic>.from(json["combo"].map((x) => x)),
        cuisine: json["cuisine"] == null
            ? null
            : List<dynamic>.from(json["cuisine"].map((x) => x)),
        serviceCity: json["service_city"] == null
            ? null
            : List<dynamic>.from(json["service_city"].map((x) => x)),
        message: json["message"] == null ? null : json["message"],
      );
}

// ! PRODUCT deal and Slider
class ProductDeal {
  ProductDeal({
    this.comboProducts,
    this.name,
    this.category,
    this.subCategory,
    this.cuisine,
    this.brand,
    this.vendor,
    this.desc,
    this.shortDesc,
    this.file,
    this.price,
    this.sellingPrice,
    this.discountedPrice,
    this.batchno,
    this.city,
    this.commission,
    this.packagingCharge,
    this.taxStatus,
    this.cgst,
    this.sgst,
    this.igst,
    this.sku,
    this.stockQty,
    this.backorders,
    this.threshold,
    this.manageStock,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.attribute,
    this.tags,
    this.startDate,
    this.endDate,
    this.createdDate,
    this.updateDate,
    this.active,
    this.deal,
    this.featured,
    this.deleted,
    this.express,
    this.addedBy,
    this.point,
    this.stockProduct,
    this.consumable,
    this.slugHistory,
    this.id,
    this.slug,
    this.v,
  });

  final dynamic? comboProducts;
  final String? name;
  final dynamic? category;
  final String? subCategory;
  final String? cuisine;
  final String? brand;
  final String? vendor;
  final String? desc;
  final String? shortDesc;
  final List<dynamic>? file;
  final int? price;
  final int? sellingPrice;
  final String? discountedPrice;
  final String? batchno;
  final String? city;
  final String? commission;
  final String? packagingCharge;
  final String? taxStatus;
  final String? cgst;
  final String? sgst;
  final String? igst;
  final String? sku;
  final String? stockQty;
  final String? backorders;
  final String? threshold;
  final int? manageStock;
  final String? weight;
  final String? length;
  final String? width;
  final String? height;
  final String? attribute;
  final String? tags;
  final DateTime? startDate;
  final DateTime? endDate;
  final DateTime? createdDate;
  final DateTime? updateDate;
  final int? active;
  final int? deal;
  final int? featured;
  final int? deleted;
  final bool? express;
  final dynamic? addedBy;
  final int? point;
  final dynamic? stockProduct;
  final int? consumable;
  final List<String>? slugHistory;
  final String? id;
  final String? slug;
  final int? v;

  factory ProductDeal.fromJson(Map<String, dynamic> json) => ProductDeal(
        comboProducts: json["combo_products"],
        name: json["name"] == null ? null : json["name"],
        category: json["category"] == null ? null : json["category"],
        subCategory: json["sub_category"] == null ? null : json["sub_category"],
        cuisine: json["cuisine"] == null ? null : json["cuisine"],
        brand: json["brand"] == null ? null : json["brand"],
        vendor: json["vendor"] == null ? null : json["vendor"],
        desc: json["desc"] == null ? null : json["desc"],
        shortDesc: json["short_desc"] == null ? null : json["short_desc"],
        file: json["file"] == null
            ? null
            : List<dynamic>.from(json["file"].map((x) => x)),
        price: json["price"] == null ? null : json["price"],
        sellingPrice:
            json["selling_price"] == null ? null : json["selling_price"],
        discountedPrice:
            json["discounted_price"] == null ? null : json["discounted_price"],
        batchno: json["batchno"] == null ? null : json["batchno"],
        city: json["city"] == null ? null : json["city"],
        commission: json["commission"] == null ? null : json["commission"],
        packagingCharge:
            json["packaging_charge"] == null ? null : json["packaging_charge"],
        taxStatus: json["tax_status"] == null ? null : json["tax_status"],
        cgst: json["cgst"] == null ? null : json["cgst"],
        sgst: json["sgst"] == null ? null : json["sgst"],
        igst: json["igst"] == null ? null : json["igst"],
        sku: json["sku"] == null ? null : json["sku"],
        stockQty: json["stock_qty"] == null ? null : json["stock_qty"],
        backorders: json["backorders"] == null ? null : json["backorders"],
        threshold: json["threshold"] == null ? null : json["threshold"],
        manageStock: json["manage_stock"] == null ? null : json["manage_stock"],
        weight: json["weight"] == null ? null : json["weight"],
        length: json["length"] == null ? null : json["length"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        attribute: json["attribute"] == null ? null : json["attribute"],
        tags: json["tags"] == null ? null : json["tags"],
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        createdDate: json["created_date"] == null
            ? null
            : DateTime.parse(json["created_date"]),
        updateDate: json["update_date"] == null
            ? null
            : DateTime.parse(json["update_date"]),
        active: json["active"] == null ? null : json["active"],
        deal: json["deal"] == null ? null : json["deal"],
        featured: json["featured"] == null ? null : json["featured"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        express: json["express"] == null ? null : json["express"],
        addedBy: json["added_by"],
        point: json["point"] == null ? null : json["point"],
        stockProduct:
            json["stock_product"] == null ? null : json["stock_product"],
        consumable: json["consumable"] == null ? null : json["consumable"],
        slugHistory: json["slug_history"] == null
            ? null
            : List<String>.from(json["slug_history"].map((x) => x)),
        id: json["_id"] == null ? null : json["_id"],
        slug: json["slug"] == null ? null : json["slug"],
        v: json["__v"] == null ? null : json["__v"],
      );

  // Map<String, dynamic> toJson() => {
  //     "combo_products": comboProducts,
  //     "name": name == null ? null : name,
  //     "category": category == null ? null : categoryEnumValues.reverse[category],
  //     "sub_category": subCategory == null ? null : subCategory,
  //     "cuisine": cuisine == null ? null : cuisine,
  //     "brand": brand == null ? null : brand,
  //     "vendor": vendor == null ? null : vendor,
  //     "desc": desc == null ? null : desc,
  //     "short_desc": shortDesc == null ? null : shortDesc,
  //     "file": file == null ? null : List<dynamic>.from(file.map((x) => x.toJson())),
  //     "price": price == null ? null : price,
  //     "selling_price": sellingPrice == null ? null : sellingPrice,
  //     "discounted_price": discountedPrice == null ? null : discountedPrice,
  //     "batchno": batchno == null ? null : batchno,
  //     "city": city == null ? null : city,
  //     "commission": commission == null ? null : commission,
  //     "packaging_charge": packagingCharge == null ? null : packagingCharge,
  //     "tax_status": taxStatus == null ? null : taxStatus,
  //     "cgst": cgst == null ? null : cgst,
  //     "sgst": sgst == null ? null : sgst,
  //     "igst": igst == null ? null : igst,
  //     "sku": sku == null ? null : sku,
  //     "stock_qty": stockQty == null ? null : stockQty,
  //     "backorders": backorders == null ? null : backorders,
  //     "threshold": threshold == null ? null : threshold,
  //     "manage_stock": manageStock == null ? null : manageStock,
  //     "weight": weight == null ? null : weight,
  //     "length": length == null ? null : length,
  //     "width": width == null ? null : width,
  //     "height": height == null ? null : height,
  //     "attribute": attribute == null ? null : attribute,
  //     "tags": tags == null ? null : tags,
  //     "start_date": startDate == null ? null : startDate.toIso8601String(),
  //     "end_date": endDate == null ? null : endDate.toIso8601String(),
  //     "created_date": createdDate == null ? null : createdDate.toIso8601String(),
  //     "update_date": updateDate == null ? null : updateDate.toIso8601String(),
  //     "active": active == null ? null : active,
  //     "deal": deal == null ? null : deal,
  //     "featured": featured == null ? null : featured,
  //     "deleted": deleted == null ? null : deleted,
  //     "express": express == null ? null : express,
  //     "added_by": addedBy,
  //     "point": point == null ? null : point,
  //     "stock_product": stockProduct == null ? null : stockProductValues.reverse[stockProduct],
  //     "consumable": consumable == null ? null : consumable,
  //     "slug_history": slugHistory == null ? null : List<dynamic>.from(slugHistory.map((x) => x)),
  //     "_id": id == null ? null : id,
  //     "slug": slug == null ? null : slug,
  //     "__v": v == null ? null : v,
  // };
}

// ! Slider

class SliderD {
  SliderD({
    this.city,
    this.name,
    this.file,
    this.createdDate,
    this.updateDate,
    this.active,
    this.deleted,
    this.id,
    this.v,
  });

  final SliderCity? city;
  final String? name;
  final String? file;
  final DateTime? createdDate;
  final DateTime? updateDate;
  final int? active;
  final int? deleted;
  final String? id;
  final int? v;

  factory SliderD.fromJson(Map<String, dynamic> json) => SliderD(
        city: json["city"] == null ? null : SliderCity.fromJson(json["city"]),
        name: json["name"] == null ? null : json["name"],
        file: json["file"] == null ? null : json["file"],
        createdDate: json["created_date"] == null
            ? null
            : DateTime.parse(json["created_date"]),
        updateDate: json["update_date"] == null
            ? null
            : DateTime.parse(json["update_date"]),
        active: json["active"] == null ? null : json["active"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        id: json["_id"] == null ? null : json["_id"],
        v: json["__v"] == null ? null : json["__v"],
      );
}

class SliderCity {
  SliderCity({
    this.name,
    this.id,
  });

  final String? name;
  final String? id;

  factory SliderCity.fromJson(Map<String, dynamic> json) => SliderCity(
        name: json["name"] == null ? null : json["name"],
        id: json["_id"] == null ? null : json["_id"],
      );

  // Map<String, dynamic> toJson() => {
  //     "name": name == null ? null : name,
  //     "_id": id == null ? null : id,
  // };
}
// // ! Extra deal
// class CuisineElement {
//     CuisineElement({
//         this.name,
//         this.description,
//         this.descriptionAfterContent,
//         this.parent,
//         this.file,
//         this.createdDate,
//         this.updateDate,
//         this.active,
//         this.deleted,
//         this.slugHistory,
//         this.id,
//         this.slug,
//         this.v,
//     });

//     final String name;
//     final String description;
//     final String descriptionAfterContent;
//     final dynamic parent;
//     final String file;
//     final DateTime createdDate;
//     final DateTime updateDate;
//     final int active;
//     final int deleted;
//     final List<String> slugHistory;
//     final String id;
//     final String slug;
//     final int v;

//     factory CuisineElement.fromJson(Map<String, dynamic> json) => CuisineElement(
//         name: json["name"] == null ? null : json["name"],
//         description: json["description"] == null ? null : json["description"],
//         descriptionAfterContent: json["description_after_content"] == null ? null : json["description_after_content"],
//         parent: json["parent"],
//         file: json["file"] == null ? null : json["file"],
//         createdDate: json["created_date"] == null ? null : DateTime.parse(json["created_date"]),
//         updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
//         active: json["active"] == null ? null : json["active"],
//         deleted: json["deleted"] == null ? null : json["deleted"],
//         slugHistory: json["slug_history"] == null ? null : List<String>.from(json["slug_history"].map((x) => x)),
//         id: json["_id"] == null ? null : json["_id"],
//         slug: json["slug"] == null ? null : json["slug"],
//         v: json["__v"] == null ? null : json["__v"],
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name == null ? null : name,
//         "description": description == null ? null : description,
//         "description_after_content": descriptionAfterContent == null ? null : descriptionAfterContent,
//         "parent": parent,
//         "file": file == null ? null : file,
//         "created_date": createdDate == null ? null : createdDate.toIso8601String(),
//         "update_date": updateDate == null ? null : updateDate.toIso8601String(),
//         "active": active == null ? null : active,
//         "deleted": deleted == null ? null : deleted,
//         "slug_history": slugHistory == null ? null : List<dynamic>.from(slugHistory.map((x) => x)),
//         "_id": id == null ? null : id,
//         "slug": slug == null ? null : slug,
//         "__v": v == null ? null : v,
//     };
// }

// class CityElement {
//     CityElement({
//         this.name,
//         this.description,
//         this.descriptionAfterContent,
//         this.file,
//         this.createdDate,
//         this.updateDate,
//         this.active,
//         this.deleted,
//         this.ps,
//         this.cod,
//         this.state,
//         this.file2,
//         this.footer,
//         this.heading,
//         this.subHeading,
//         this.footerContent,
//         this.slugHistory,
//         this.id,
//         this.slug,
//         this.v,
//     });

//     final String name;
//     final String description;
//     final String descriptionAfterContent;
//     final String file;
//     final DateTime createdDate;
//     final DateTime updateDate;
//     final int active;
//     final int deleted;
//     final Ps ps;
//     final bool cod;
//     final String state;
//     final String file2;
//     final int footer;
//     final String heading;
//     final SubHeading subHeading;
//     final String footerContent;
//     final List<String> slugHistory;
//     final String id;
//     final String slug;
//     final int v;

//     factory CityElement.fromJson(Map<String, dynamic> json) => CityElement(
//         name: json["name"] == null ? null : json["name"],
//         description: json["description"] == null ? null : json["description"],
//         descriptionAfterContent: json["description_after_content"] == null ? null : json["description_after_content"],
//         file: json["file"] == null ? null : json["file"],
//         createdDate: json["created_date"] == null ? null : DateTime.parse(json["created_date"]),
//         updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
//         active: json["active"] == null ? null : json["active"],
//         deleted: json["deleted"] == null ? null : json["deleted"],
//         ps: json["ps"] == null ? null : psValues.map[json["ps"]],
//         cod: json["cod"] == null ? null : json["cod"],
//         state: json["state"] == null ? null : json["state"],
//         file2: json["file2"] == null ? null : json["file2"],
//         footer: json["footer"] == null ? null : json["footer"],
//         heading: json["heading"] == null ? null : json["heading"],
//         subHeading: json["sub_heading"] == null ? null : subHeadingValues.map[json["sub_heading"]],
//         footerContent: json["footer_content"] == null ? null : json["footer_content"],
//         slugHistory: json["slug_history"] == null ? null : List<String>.from(json["slug_history"].map((x) => x)),
//         id: json["_id"] == null ? null : json["_id"],
//         slug: json["slug"] == null ? null : json["slug"],
//         v: json["__v"] == null ? null : json["__v"],
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name == null ? null : name,
//         "description": description == null ? null : description,
//         "description_after_content": descriptionAfterContent == null ? null : descriptionAfterContent,
//         "file": file == null ? null : file,
//         "created_date": createdDate == null ? null : createdDate.toIso8601String(),
//         "update_date": updateDate == null ? null : updateDate.toIso8601String(),
//         "active": active == null ? null : active,
//         "deleted": deleted == null ? null : deleted,
//         "ps": ps == null ? null : psValues.reverse[ps],
//         "cod": cod == null ? null : cod,
//         "state": state == null ? null : state,
//         "file2": file2 == null ? null : file2,
//         "footer": footer == null ? null : footer,
//         "heading": heading == null ? null : heading,
//         "sub_heading": subHeading == null ? null : subHeadingValues.reverse[subHeading],
//         "footer_content": footerContent == null ? null : footerContent,
//         "slug_history": slugHistory == null ? null : List<dynamic>.from(slugHistory.map((x) => x)),
//         "_id": id == null ? null : id,
//         "slug": slug == null ? null : slug,
//         "__v": v == null ? null : v,
//     };
// }

// enum Ps { BOTH, PRODUCT, SERVICE }

// final psValues = EnumValues({
//     "both": Ps.BOTH,
//     "product": Ps.PRODUCT,
//     "service": Ps.SERVICE
// });

// enum SubHeading { CONNECTING_FOOD_CAPITALS_OF_INDIA, EMPTY }

// final subHeadingValues = EnumValues({
//     "Connecting Food Capitals of India.": SubHeading.CONNECTING_FOOD_CAPITALS_OF_INDIA,
//     "": SubHeading.EMPTY
// });

// class Featured {
//     Featured({
//         this.comboProducts,
//         this.name,
//         this.category,
//         this.subCategory,
//         this.cuisine,
//         this.brand,
//         this.vendor,
//         this.desc,
//         this.shortDesc,
//         this.file,
//         this.price,
//         this.sellingPrice,
//         this.discountedPrice,
//         this.batchno,
//         this.city,
//         this.commission,
//         this.packagingCharge,
//         this.taxStatus,
//         this.cgst,
//         this.sgst,
//         this.igst,
//         this.sku,
//         this.stockQty,
//         this.backorders,
//         this.threshold,
//         this.manageStock,
//         this.weight,
//         this.length,
//         this.width,
//         this.height,
//         this.attribute,
//         this.tags,
//         this.startDate,
//         this.endDate,
//         this.createdDate,
//         this.updateDate,
//         this.active,
//         this.deal,
//         this.featured,
//         this.deleted,
//         this.express,
//         this.addedBy,
//         this.point,
//         this.stockProduct,
//         this.consumable,
//         this.slugHistory,
//         this.id,
//         this.slug,
//         this.v,
//         this.pointExpDate,
//     });

//     final dynamic comboProducts;
//     final String name;
//     final CategoryEnum category;
//     final String subCategory;
//     final String cuisine;
//     final String brand;
//     final String vendor;
//     final String desc;
//     final String shortDesc;
//     final List<FileElement> file;
//     final int price;
//     final int sellingPrice;
//     final String discountedPrice;
//     final String batchno;
//     final String city;
//     final String commission;
//     final String packagingCharge;
//     final String taxStatus;
//     final String cgst;
//     final String sgst;
//     final String igst;
//     final String sku;
//     final String stockQty;
//     final String backorders;
//     final String threshold;
//     final int manageStock;
//     final String weight;
//     final String length;
//     final String width;
//     final String height;
//     final String attribute;
//     final String tags;
//     final DateTime startDate;
//     final DateTime endDate;
//     final DateTime createdDate;
//     final DateTime updateDate;
//     final int active;
//     final int deal;
//     final int featured;
//     final int deleted;
//     final bool express;
//     final dynamic addedBy;
//     final int point;
//     final StockProduct stockProduct;
//     final int consumable;
//     final List<String> slugHistory;
//     final String id;
//     final String slug;
//     final int v;
//     final DateTime pointExpDate;

//     factory Featured.fromJson(Map<String, dynamic> json) => Featured(
//         comboProducts: json["combo_products"],
//         name: json["name"] == null ? null : json["name"],
//         category: json["category"] == null ? null : categoryEnumValues.map[json["category"]],
//         subCategory: json["sub_category"] == null ? null : json["sub_category"],
//         cuisine: json["cuisine"] == null ? null : json["cuisine"],
//         brand: json["brand"] == null ? null : json["brand"],
//         vendor: json["vendor"] == null ? null : json["vendor"],
//         desc: json["desc"] == null ? null : json["desc"],
//         shortDesc: json["short_desc"] == null ? null : json["short_desc"],
//         file: json["file"] == null ? null : List<FileElement>.from(json["file"].map((x) => FileElement.fromJson(x))),
//         price: json["price"] == null ? null : json["price"],
//         sellingPrice: json["selling_price"] == null ? null : json["selling_price"],
//         discountedPrice: json["discounted_price"] == null ? null : json["discounted_price"],
//         batchno: json["batchno"] == null ? null : json["batchno"],
//         city: json["city"] == null ? null : json["city"],
//         commission: json["commission"] == null ? null : json["commission"],
//         packagingCharge: json["packaging_charge"] == null ? null : json["packaging_charge"],
//         taxStatus: json["tax_status"] == null ? null : json["tax_status"],
//         cgst: json["cgst"] == null ? null : json["cgst"],
//         sgst: json["sgst"] == null ? null : json["sgst"],
//         igst: json["igst"] == null ? null : json["igst"],
//         sku: json["sku"] == null ? null : json["sku"],
//         stockQty: json["stock_qty"] == null ? null : json["stock_qty"],
//         backorders: json["backorders"] == null ? null : json["backorders"],
//         threshold: json["threshold"] == null ? null : json["threshold"],
//         manageStock: json["manage_stock"] == null ? null : json["manage_stock"],
//         weight: json["weight"] == null ? null : json["weight"],
//         length: json["length"] == null ? null : json["length"],
//         width: json["width"] == null ? null : json["width"],
//         height: json["height"] == null ? null : json["height"],
//         attribute: json["attribute"] == null ? null : json["attribute"],
//         tags: json["tags"] == null ? null : json["tags"],
//         startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
//         endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
//         createdDate: json["created_date"] == null ? null : DateTime.parse(json["created_date"]),
//         updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
//         active: json["active"] == null ? null : json["active"],
//         deal: json["deal"] == null ? null : json["deal"],
//         featured: json["featured"] == null ? null : json["featured"],
//         deleted: json["deleted"] == null ? null : json["deleted"],
//         express: json["express"] == null ? null : json["express"],
//         addedBy: json["added_by"],
//         point: json["point"] == null ? null : json["point"],
//         stockProduct: json["stock_product"] == null ? null : stockProductValues.map[json["stock_product"]],
//         consumable: json["consumable"] == null ? null : json["consumable"],
//         slugHistory: json["slug_history"] == null ? null : List<String>.from(json["slug_history"].map((x) => x)),
//         id: json["_id"] == null ? null : json["_id"],
//         slug: json["slug"] == null ? null : json["slug"],
//         v: json["__v"] == null ? null : json["__v"],
//         pointExpDate: json["point_exp_date"] == null ? null : DateTime.parse(json["point_exp_date"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "combo_products": comboProducts,
//         "name": name == null ? null : name,
//         "category": category == null ? null : categoryEnumValues.reverse[category],
//         "sub_category": subCategory == null ? null : subCategory,
//         "cuisine": cuisine == null ? null : cuisine,
//         "brand": brand == null ? null : brand,
//         "vendor": vendor == null ? null : vendor,
//         "desc": desc == null ? null : desc,
//         "short_desc": shortDesc == null ? null : shortDesc,
//         "file": file == null ? null : List<dynamic>.from(file.map((x) => x.toJson())),
//         "price": price == null ? null : price,
//         "selling_price": sellingPrice == null ? null : sellingPrice,
//         "discounted_price": discountedPrice == null ? null : discountedPrice,
//         "batchno": batchno == null ? null : batchno,
//         "city": city == null ? null : city,
//         "commission": commission == null ? null : commission,
//         "packaging_charge": packagingCharge == null ? null : packagingCharge,
//         "tax_status": taxStatus == null ? null : taxStatus,
//         "cgst": cgst == null ? null : cgst,
//         "sgst": sgst == null ? null : sgst,
//         "igst": igst == null ? null : igst,
//         "sku": sku == null ? null : sku,
//         "stock_qty": stockQty == null ? null : stockQty,
//         "backorders": backorders == null ? null : backorders,
//         "threshold": threshold == null ? null : threshold,
//         "manage_stock": manageStock == null ? null : manageStock,
//         "weight": weight == null ? null : weight,
//         "length": length == null ? null : length,
//         "width": width == null ? null : width,
//         "height": height == null ? null : height,
//         "attribute": attribute == null ? null : attribute,
//         "tags": tags == null ? null : tags,
//         "start_date": startDate == null ? null : startDate.toIso8601String(),
//         "end_date": endDate == null ? null : endDate.toIso8601String(),
//         "created_date": createdDate == null ? null : createdDate.toIso8601String(),
//         "update_date": updateDate == null ? null : updateDate.toIso8601String(),
//         "active": active == null ? null : active,
//         "deal": deal == null ? null : deal,
//         "featured": featured == null ? null : featured,
//         "deleted": deleted == null ? null : deleted,
//         "express": express == null ? null : express,
//         "added_by": addedBy,
//         "point": point == null ? null : point,
//         "stock_product": stockProduct == null ? null : stockProductValues.reverse[stockProduct],
//         "consumable": consumable == null ? null : consumable,
//         "slug_history": slugHistory == null ? null : List<dynamic>.from(slugHistory.map((x) => x)),
//         "_id": id == null ? null : id,
//         "slug": slug == null ? null : slug,
//         "__v": v == null ? null : v,
//         "point_exp_date": pointExpDate == null ? null : pointExpDate.toIso8601String(),
//     };
// }

// enum CategoryEnum { THE_6050_BB1256_CB9_D00088521_BC }

// final categoryEnumValues = EnumValues({
//     "6050bb1256cb9d00088521bc": CategoryEnum.THE_6050_BB1256_CB9_D00088521_BC
// });

// class FileElement {
//     FileElement({
//         this.fieldname,
//         this.originalname,
//         this.encoding,
//         this.mimetype,
//         this.size,
//         this.bucket,
//         this.key,
//         this.acl,
//         this.contentType,
//         this.contentDisposition,
//         this.storageClass,
//         this.serverSideEncryption,
//         this.metadata,
//         this.location,
//         this.etag,
//         this.versionId,
//     });

//     final Fieldname fieldname;
//     final String originalname;
//     final Encoding encoding;
//     final Mimetype mimetype;
//     final int size;
//     final Bucket bucket;
//     final String key;
//     final Acl acl;
//     final ContentType contentType;
//     final dynamic contentDisposition;
//     final StorageClass storageClass;
//     final dynamic serverSideEncryption;
//     final dynamic metadata;
//     final String location;
//     final String etag;
//     final dynamic versionId;

//     factory FileElement.fromJson(Map<String, dynamic> json) => FileElement(
//         fieldname: json["fieldname"] == null ? null : fieldnameValues.map[json["fieldname"]],
//         originalname: json["originalname"] == null ? null : json["originalname"],
//         encoding: json["encoding"] == null ? null : encodingValues.map[json["encoding"]],
//         mimetype: json["mimetype"] == null ? null : mimetypeValues.map[json["mimetype"]],
//         size: json["size"] == null ? null : json["size"],
//         bucket: json["bucket"] == null ? null : bucketValues.map[json["bucket"]],
//         key: json["key"] == null ? null : json["key"],
//         acl: json["acl"] == null ? null : aclValues.map[json["acl"]],
//         contentType: json["contentType"] == null ? null : contentTypeValues.map[json["contentType"]],
//         contentDisposition: json["contentDisposition"],
//         storageClass: json["storageClass"] == null ? null : storageClassValues.map[json["storageClass"]],
//         serverSideEncryption: json["serverSideEncryption"],
//         metadata: json["metadata"],
//         location: json["location"] == null ? null : json["location"],
//         etag: json["etag"] == null ? null : json["etag"],
//         versionId: json["versionId"],
//     );

//     Map<String, dynamic> toJson() => {
//         "fieldname": fieldname == null ? null : fieldnameValues.reverse[fieldname],
//         "originalname": originalname == null ? null : originalname,
//         "encoding": encoding == null ? null : encodingValues.reverse[encoding],
//         "mimetype": mimetype == null ? null : mimetypeValues.reverse[mimetype],
//         "size": size == null ? null : size,
//         "bucket": bucket == null ? null : bucketValues.reverse[bucket],
//         "key": key == null ? null : key,
//         "acl": acl == null ? null : aclValues.reverse[acl],
//         "contentType": contentType == null ? null : contentTypeValues.reverse[contentType],
//         "contentDisposition": contentDisposition,
//         "storageClass": storageClass == null ? null : storageClassValues.reverse[storageClass],
//         "serverSideEncryption": serverSideEncryption,
//         "metadata": metadata,
//         "location": location == null ? null : location,
//         "etag": etag == null ? null : etag,
//         "versionId": versionId,
//     };
// }

// enum Acl { PUBLIC_READ }

// final aclValues = EnumValues({
//     "public-read": Acl.PUBLIC_READ
// });

// enum Bucket { T2_P }

// final bucketValues = EnumValues({
//     "t2p": Bucket.T2_P
// });

// enum ContentType { APPLICATION_OCTET_STREAM }

// final contentTypeValues = EnumValues({
//     "application/octet-stream": ContentType.APPLICATION_OCTET_STREAM
// });

// enum Encoding { THE_7_BIT }

// final encodingValues = EnumValues({
//     "7bit": Encoding.THE_7_BIT
// });

// enum Fieldname { UPLOAD }

// final fieldnameValues = EnumValues({
//     "upload": Fieldname.UPLOAD
// });

// enum Mimetype { IMAGE_JPEG, IMAGE_PNG }

// final mimetypeValues = EnumValues({
//     "image/jpeg": Mimetype.IMAGE_JPEG,
//     "image/png": Mimetype.IMAGE_PNG
// });

// enum StorageClass { STANDARD }

// final storageClassValues = EnumValues({
//     "STANDARD": StorageClass.STANDARD
// });

// enum StockProduct { THE_6049_F3_DB426_AC9000878_DDF6, THE_53_CB6_B9_B4_F4_DDEF1_AD47_F943 }

// final stockProductValues = EnumValues({
//     "53cb6b9b4f4ddef1ad47f943": StockProduct.THE_53_CB6_B9_B4_F4_DDEF1_AD47_F943,
//     "6049f3db426ac9000878ddf6": StockProduct.THE_6049_F3_DB426_AC9000878_DDF6
// });

// class Special {
//     Special({
//         this.coupon,
//         this.desc,
//         this.type,
//         this.amount,
//         this.startDate,
//         this.expDate,
//         this.minimumAmount,
//         this.maximumAmount,
//         this.maxUsageLimit,
//         this.maxUsageLimitUser,
//         this.createdDate,
//         this.updateDate,
//         this.active,
//         this.deleted,
//         this.brand,
//         this.category,
//         this.product,
//         this.customer,
//         this.id,
//         this.v,
//     });

//     final String coupon;
//     final String desc;
//     final String type;
//     final String amount;
//     final DateTime startDate;
//     final DateTime expDate;
//     final String minimumAmount;
//     final String maximumAmount;
//     final int maxUsageLimit;
//     final int maxUsageLimitUser;
//     final DateTime createdDate;
//     final DateTime updateDate;
//     final int active;
//     final int deleted;
//     final List<String> brand;
//     final List<CategoryEnum> category;
//     final List<String> product;
//     final List<String> customer;
//     final String id;
//     final int v;

//     factory Special.fromJson(Map<String, dynamic> json) => Special(
//         coupon: json["coupon"] == null ? null : json["coupon"],
//         desc: json["desc"] == null ? null : json["desc"],
//         type: json["type"] == null ? null : json["type"],
//         amount: json["amount"] == null ? null : json["amount"],
//         startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
//         expDate: json["exp_date"] == null ? null : DateTime.parse(json["exp_date"]),
//         minimumAmount: json["minimum_amount"] == null ? null : json["minimum_amount"],
//         maximumAmount: json["maximum_amount"] == null ? null : json["maximum_amount"],
//         maxUsageLimit: json["max_usage_limit"] == null ? null : json["max_usage_limit"],
//         maxUsageLimitUser: json["max_usage_limit_user"] == null ? null : json["max_usage_limit_user"],
//         createdDate: json["created_date"] == null ? null : DateTime.parse(json["created_date"]),
//         updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
//         active: json["active"] == null ? null : json["active"],
//         deleted: json["deleted"] == null ? null : json["deleted"],
//         brand: json["brand"] == null ? null : List<String>.from(json["brand"].map((x) => x)),
//         category: json["category"] == null ? null : List<CategoryEnum>.from(json["category"].map((x) => categoryEnumValues.map[x])),
//         product: json["product"] == null ? null : List<String>.from(json["product"].map((x) => x)),
//         customer: json["customer"] == null ? null : List<String>.from(json["customer"].map((x) => x)),
//         id: json["_id"] == null ? null : json["_id"],
//         v: json["__v"] == null ? null : json["__v"],
//     );

//     Map<String, dynamic> toJson() => {
//         "coupon": coupon == null ? null : coupon,
//         "desc": desc == null ? null : desc,
//         "type": type == null ? null : type,
//         "amount": amount == null ? null : amount,
//         "start_date": startDate == null ? null : startDate.toIso8601String(),
//         "exp_date": expDate == null ? null : expDate.toIso8601String(),
//         "minimum_amount": minimumAmount == null ? null : minimumAmount,
//         "maximum_amount": maximumAmount == null ? null : maximumAmount,
//         "max_usage_limit": maxUsageLimit == null ? null : maxUsageLimit,
//         "max_usage_limit_user": maxUsageLimitUser == null ? null : maxUsageLimitUser,
//         "created_date": createdDate == null ? null : createdDate.toIso8601String(),
//         "update_date": updateDate == null ? null : updateDate.toIso8601String(),
//         "active": active == null ? null : active,
//         "deleted": deleted == null ? null : deleted,
//         "brand": brand == null ? null : List<dynamic>.from(brand.map((x) => x)),
//         "category": category == null ? null : List<dynamic>.from(category.map((x) => categoryEnumValues.reverse[x])),
//         "product": product == null ? null : List<dynamic>.from(product.map((x) => x)),
//         "customer": customer == null ? null : List<dynamic>.from(customer.map((x) => x)),
//         "_id": id == null ? null : id,
//         "__v": v == null ? null : v,
//     };
// }

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
