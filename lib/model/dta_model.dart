class ProductModel {
  List<Data>? data;
  bool? success;
  int? status;

  ProductModel({this.data, this.success, this.status});
  ProductModel.name();
  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  int? id;
  String? packageName;
  String? packageType;
  int? amount;
  int? validity;
  int? bonus;

  Data(
      { required this.id,
       required this.packageName,
        required this.packageType,
        required  this.amount,
        required  this.validity,
        required this.bonus});



  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    packageName = json['package_name'];
    packageType = json['package_type'];
    amount = json['amount'];
    validity = json['validity'];
    bonus = json['bonus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['package_name'] = this.packageName;
    data['package_type'] = this.packageType;
    data['amount'] = this.amount;
    data['validity'] = this.validity;
    data['bonus'] = this.bonus;
    return data;
  }
}