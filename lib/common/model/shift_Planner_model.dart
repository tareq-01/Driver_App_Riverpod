class ShiftPlannerModel {
  int? statusCode;
  String? message;
  bool? isSuccess;
  Data? data;

  ShiftPlannerModel({this.statusCode, this.message, this.isSuccess, this.data});

  ShiftPlannerModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    isSuccess = json['isSuccess'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    data['isSuccess'] = this.isSuccess;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<ShiftList>? shiftList;
  int? totalCount;
  int? pageNumber;
  int? pageSize;
  int? totalPages;
  bool? hasPreviousPage;
  bool? hasNextPage;

  Data(
      {this.shiftList,
      this.totalCount,
      this.pageNumber,
      this.pageSize,
      this.totalPages,
      this.hasPreviousPage,
      this.hasNextPage});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['shiftList'] != null) {
      shiftList = <ShiftList>[];
      json['shiftList'].forEach((v) {
        shiftList!.add(new ShiftList.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    totalPages = json['totalPages'];
    hasPreviousPage = json['hasPreviousPage'];
    hasNextPage = json['hasNextPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.shiftList != null) {
      data['shiftList'] = this.shiftList!.map((v) => v.toJson()).toList();
    }
    data['totalCount'] = this.totalCount;
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['totalPages'] = this.totalPages;
    data['hasPreviousPage'] = this.hasPreviousPage;
    data['hasNextPage'] = this.hasNextPage;
    return data;
  }
}

class ShiftList {
  int? id;
  String? drivers;
  String? car;
  String? status;
  int? request;
  int? stops;
  int? packages;
  String? photoUrl;
  int? coDriverCount;
  String? scheduledStart;
  String? scheduledEnd;

  ShiftList(
      {this.id,
      this.drivers,
      this.car,
      this.status,
      this.request,
      this.stops,
      this.packages,
      this.photoUrl,
      this.coDriverCount,
      this.scheduledStart,
      this.scheduledEnd});

  ShiftList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    drivers = json['drivers'];
    car = json['car'];
    status = json['status'];
    request = json['request'];
    stops = json['stops'];
    packages = json['packages'];
    photoUrl = json['photoUrl'];
    coDriverCount = json['coDriverCount'];
    scheduledStart = json['scheduledStart'];
    scheduledEnd = json['scheduledEnd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['drivers'] = this.drivers;
    data['car'] = this.car;
    data['status'] = this.status;
    data['request'] = this.request;
    data['stops'] = this.stops;
    data['packages'] = this.packages;
    data['photoUrl'] = this.photoUrl;
    data['coDriverCount'] = this.coDriverCount;
    data['scheduledStart'] = this.scheduledStart;
    data['scheduledEnd'] = this.scheduledEnd;
    return data;
  }
}