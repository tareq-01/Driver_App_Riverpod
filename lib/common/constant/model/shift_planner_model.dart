class ShiftPlannerModel {
    int? statusCode;
    String? message;
    bool? isSuccess;
    Data? data;

    ShiftPlannerModel({
        this.statusCode,
        this.message,
        this.isSuccess,
        this.data,
    });

    factory ShiftPlannerModel.fromJson(Map<String, dynamic> json) => ShiftPlannerModel(
        statusCode: json["statusCode"],
        message: json["message"],
        isSuccess: json["isSuccess"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "isSuccess": isSuccess,
        "data": data?.toJson(),
    };
}

class Data {
    List<ShiftList>? shiftList;
    int? totalCount;
    int? pageNumber;
    int? pageSize;
    int? totalPages;
    bool? hasPreviousPage;
    bool? hasNextPage;

    Data({
        this.shiftList,
        this.totalCount,
        this.pageNumber,
        this.pageSize,
        this.totalPages,
        this.hasPreviousPage,
        this.hasNextPage,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        shiftList: json["shiftList"] == null ? [] : List<ShiftList>.from(json["shiftList"]!.map((x) => ShiftList.fromJson(x))),
        totalCount: json["totalCount"],
        pageNumber: json["pageNumber"],
        pageSize: json["pageSize"],
        totalPages: json["totalPages"],
        hasPreviousPage: json["hasPreviousPage"],
        hasNextPage: json["hasNextPage"],
    );

    Map<String, dynamic> toJson() => {
        "shiftList": shiftList == null ? [] : List<dynamic>.from(shiftList!.map((x) => x.toJson())),
        "totalCount": totalCount,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "totalPages": totalPages,
        "hasPreviousPage": hasPreviousPage,
        "hasNextPage": hasNextPage,
    };
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
    DateTime? scheduledStart;
    DateTime? scheduledEnd;

    ShiftList({
        this.id,
        this.drivers,
        this.car,
        this.status,
        this.request,
        this.stops,
        this.packages,
        this.photoUrl,
        this.coDriverCount,
        this.scheduledStart,
        this.scheduledEnd,
    });

    factory ShiftList.fromJson(Map<String, dynamic> json) => ShiftList(
        id: json["id"],
        drivers: json["drivers"],
        car: json["car"],
        status: json["status"],
        request: json["request"],
        stops: json["stops"],
        packages: json["packages"],
        photoUrl: json["photoUrl"],
        coDriverCount: json["coDriverCount"],
        scheduledStart: json["scheduledStart"] == null ? null : DateTime.parse(json["scheduledStart"]),
        scheduledEnd: json["scheduledEnd"] == null ? null : DateTime.parse(json["scheduledEnd"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "drivers": drivers,
        "car": car,
        "status": status,
        "request": request,
        "stops": stops,
        "packages": packages,
        "photoUrl": photoUrl,
        "coDriverCount": coDriverCount,
        "scheduledStart": scheduledStart?.toIso8601String(),
        "scheduledEnd": scheduledEnd?.toIso8601String(),
    };
}
