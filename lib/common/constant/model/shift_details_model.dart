class ShiftDetailsModel {
  int? statusCode;
  String? message;
  bool? isSuccess;
  Data? data;

  ShiftDetailsModel({this.statusCode, this.message, this.isSuccess, this.data});

  factory ShiftDetailsModel.fromJson(Map<String, dynamic> json) =>
      ShiftDetailsModel(
        statusCode: json["statusCode"],
        message: json["message"],
        isSuccess: json["isSuccess"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );
}

class Data {
  int? id;
  int? companyId;
  DateTime? scheduledStart;
  DateTime? scheduledEnd;
  StartAddress? startAddress;
  String? shiftInstruction;
  String? status;
  int? shiftPlannedTime;
  int? breakTime;
  bool? isOnBreak;
  int? currentBreakTime;
  int? workingTime;
  List<ShiftDriverList>? shiftDriverList;
  List<ShiftVehicleList>? shiftVehicleList;

  Data({
    this.id,
    this.companyId,
    this.scheduledStart,
    this.scheduledEnd,
    this.startAddress,
    this.shiftInstruction,
    this.status,
    this.shiftPlannedTime,
    this.breakTime,
    this.isOnBreak,
    this.currentBreakTime,
    this.workingTime,
    this.shiftDriverList,
    this.shiftVehicleList,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    companyId: json["companyId"],
    scheduledStart: json["scheduledStart"] == null
        ? null
        : DateTime.parse(json["scheduledStart"]),
    scheduledEnd: json["scheduledEnd"] == null
        ? null
        : DateTime.parse(json["scheduledEnd"]),
    startAddress: json["startAddress"] == null
        ? null
        : StartAddress.fromJson(json["startAddress"]),
    shiftInstruction: json["shiftInstruction"],
    status: json["status"],
    shiftPlannedTime: json["shiftPlannedTime"],
    breakTime: json["breakTime"],
    isOnBreak: json["isOnBreak"],
    currentBreakTime: json["currentBreakTime"],
    workingTime: json["workingTime"],
    shiftDriverList: json["shiftDriverList"] == null
        ? []
        : List<ShiftDriverList>.from(
            json["shiftDriverList"]!.map((x) => ShiftDriverList.fromJson(x)),
          ),
    shiftVehicleList: json["shiftVehicleList"] == null
        ? []
        : List<ShiftVehicleList>.from(
            json["shiftVehicleList"]!.map((x) => ShiftVehicleList.fromJson(x)),
          ),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "companyId": companyId,
    "scheduledStart": scheduledStart?.toIso8601String(),
    "scheduledEnd": scheduledEnd?.toIso8601String(),
    "startAddress": startAddress?.toJson(),
    "shiftInstruction": shiftInstruction,
    "status": status,
    "shiftPlannedTime": shiftPlannedTime,
    "breakTime": breakTime,
    "isOnBreak": isOnBreak,
    "currentBreakTime": currentBreakTime,
    "workingTime": workingTime,
    "shiftDriverList": shiftDriverList == null
        ? []
        : List<dynamic>.from(shiftDriverList!.map((x) => x.toJson())),
    "shiftVehicleList": shiftVehicleList == null
        ? []
        : List<dynamic>.from(shiftVehicleList!.map((x) => x.toJson())),
  };
}

class ShiftDriverList {
  int? id;
  String? name;
  bool? isMain;
  String? photoUrl;
  List<LicenseCategory>? licenseCategories;

  ShiftDriverList({
    this.id,
    this.name,
    this.isMain,
    this.photoUrl,
    this.licenseCategories,
  });

  factory ShiftDriverList.fromJson(Map<String, dynamic> json) =>
      ShiftDriverList(
        id: json["id"],
        name: json["name"],
        isMain: json["isMain"],
        photoUrl: json["photoUrl"],
        licenseCategories: json["licenseCategories"] == null
            ? []
            : List<LicenseCategory>.from(
                json["licenseCategories"]!.map(
                  (x) => LicenseCategory.fromJson(x),
                ),
              ),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "isMain": isMain,
    "photoUrl": photoUrl,
    "licenseCategories": licenseCategories == null
        ? []
        : List<dynamic>.from(licenseCategories!.map((x) => x.toJson())),
  };
}

class LicenseCategory {
  int? id;
  dynamic vehicleType;
  dynamic vehicleCategory;
  String? name;

  LicenseCategory({this.id, this.vehicleType, this.vehicleCategory, this.name});

  factory LicenseCategory.fromJson(Map<String, dynamic> json) =>
      LicenseCategory(
        id: json["id"],
        vehicleType: json["vehicleType"],
        vehicleCategory: json["vehicleCategory"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "vehicleType": vehicleType,
    "vehicleCategory": vehicleCategory,
    "name": name,
  };
}

class ShiftVehicleList {
  int? id;
  String? name;
  String? licensePlate;
  String? photoUrl;
  int? load;
  int? totalVolume;
  int? volume;
  double? eupallet;

  ShiftVehicleList({
    this.id,
    this.name,
    this.licensePlate,
    this.photoUrl,
    this.load,
    this.totalVolume,
    this.volume,
    this.eupallet,
  });

  factory ShiftVehicleList.fromJson(Map<String, dynamic> json) =>
      ShiftVehicleList(
        id: json["id"],
        name: json["name"],
        licensePlate: json["licensePlate"],
        photoUrl: json["photoUrl"],
        load: json["load"],
        totalVolume: json["totalVolume"],
        volume: json["volume"],
        eupallet: json["eupallet"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "licensePlate": licensePlate,
    "photoUrl": photoUrl,
    "load": load,
    "totalVolume": totalVolume,
    "volume": volume,
    "eupallet": eupallet,
  };
}

class StartAddress {
  int? id;
  String? address;
  double? latitude;
  double? longitude;
  String? countryCode;
  String? state;
  String? city;
  String? postCode;
  String? title;
  String? note;
  String? floor;
  dynamic isDefault;

  StartAddress({
    this.id,
    this.address,
    this.latitude,
    this.longitude,
    this.countryCode,
    this.state,
    this.city,
    this.postCode,
    this.title,
    this.note,
    this.floor,
    this.isDefault,
  });

  factory StartAddress.fromJson(Map<String, dynamic> json) => StartAddress(
    id: json["id"],
    address: json["address"],
    latitude: json["latitude"]?.toDouble(),
    longitude: json["longitude"]?.toDouble(),
    countryCode: json["countryCode"],
    state: json["state"],
    city: json["city"],
    postCode: json["postCode"],
    title: json["title"],
    note: json["note"],
    floor: json["floor"],
    isDefault: json["isDefault"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "address": address,
    "latitude": latitude,
    "longitude": longitude,
    "countryCode": countryCode,
    "state": state,
    "city": city,
    "postCode": postCode,
    "title": title,
    "note": note,
    "floor": floor,
    "isDefault": isDefault,
  };
}
