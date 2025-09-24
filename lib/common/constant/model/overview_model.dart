class OverViewSectionModel {
    int? statusCode;
    String? message;
    bool? isSuccess;
    Data? data;

    OverViewSectionModel({
        this.statusCode,
        this.message,
        this.isSuccess,
        this.data,
    });

    factory OverViewSectionModel.fromJson(Map<String, dynamic> json) => OverViewSectionModel(
        statusCode: json["statusCode"],
        message: json["message"],
        isSuccess: json["isSuccess"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );


}
class Data {
    Summary? summary;
    List<RequestList>? requestList;
    List<StopList>? stopList;
    List<ProductList>? productList;
    CapacitySummary? capacitySummary;

    Data({
        this.summary,
        this.requestList,
        this.stopList,
        this.productList,
        this.capacitySummary,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        summary: json["summary"] == null ? null : Summary.fromJson(json["summary"]),
        requestList: json["requestList"] == null ? [] : List<RequestList>.from(json["requestList"]!.map((x) => RequestList.fromJson(x))),
        stopList: json["stopList"] == null ? [] : List<StopList>.from(json["stopList"]!.map((x) => StopList.fromJson(x))),
        productList: json["productList"] == null ? [] : List<ProductList>.from(json["productList"]!.map((x) => ProductList.fromJson(x))),
        capacitySummary: json["capacitySummary"] == null ? null : CapacitySummary.fromJson(json["capacitySummary"]),
    );


}

class CapacitySummary {
    int? shiftId;
    dynamic weightCapacityKg;
    dynamic? usedWeightKg;
    dynamic remainingWeightKg;
    dynamic volumeCapacityCbm;
    dynamic usedVolumeCbm;
    dynamic remainingVolumeCbm;
    dynamic liquidCapacityLiters;
    dynamic usedLiquidLiters;
    dynamic remainingLiquidLiters;
    dynamic palletCapacity;
    dynamic usedPallets;
    dynamic remainingPallets;

    CapacitySummary({
        this.shiftId,
        this.weightCapacityKg,
        this.usedWeightKg,
        this.remainingWeightKg,
        this.volumeCapacityCbm,
        this.usedVolumeCbm,
        this.remainingVolumeCbm,
        this.liquidCapacityLiters,
        this.usedLiquidLiters,
        this.remainingLiquidLiters,
        this.palletCapacity,
        this.usedPallets,
        this.remainingPallets,
    });

    factory CapacitySummary.fromJson(Map<String, dynamic> json) => CapacitySummary(
        shiftId: json["shiftId"],
        weightCapacityKg: json["weightCapacityKg"],
        usedWeightKg: json["usedWeightKg"],
        remainingWeightKg: json["remainingWeightKg"],
        volumeCapacityCbm: json["volumeCapacityCbm"],
        usedVolumeCbm: json["usedVolumeCbm"],
        remainingVolumeCbm: json["remainingVolumeCbm"],
        liquidCapacityLiters: json["liquidCapacityLiters"],
        usedLiquidLiters: json["usedLiquidLiters"],
        remainingLiquidLiters: json["remainingLiquidLiters"],
        palletCapacity: json["palletCapacity"],
        usedPallets: json["usedPallets"]?.toDouble(),
        remainingPallets: json["remainingPallets"]?.toDouble(),
    );

}

class ProductList {
    int? shiftId;
    int? id;
    int? stopId;
    String? name;
    String? status;
    dynamic weight;
    int? requestId;
    dynamic height;
    dynamic length;
    dynamic width;
    dynamic volume;
    double? eupallet;
    String? productCode;
    String? heightUnit;
    String? lengthUnit;
    String? widthUnit;
    String? weightUnit;
    String? volumeUnit;
    dynamic ean;
    String? barcode;
    String? qr;
    String? note;
    dynamic attachment;

    ProductList({
        this.shiftId,
        this.id,
        this.stopId,
        this.name,
        this.status,
        this.weight,
        this.requestId,
        this.height,
        this.length,
        this.width,
        this.volume,
        this.eupallet,
        this.productCode,
        this.heightUnit,
        this.lengthUnit,
        this.widthUnit,
        this.weightUnit,
        this.volumeUnit,
        this.ean,
        this.barcode,
        this.qr,
        this.note,
        this.attachment,
    });

    factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        shiftId: json["shiftId"],
        id: json["id"],
        stopId: json["stopId"],
        name: json["name"],
        status: json["status"],
        weight: json["weight"],
        requestId: json["requestId"],
        height: json["height"],
        length: json["length"],
        width: json["width"],
        volume: json["volume"],
        eupallet: json["eupallet"]?.toDouble(),
        productCode: json["productCode"],
        heightUnit: json["heightUnit"],
        lengthUnit: json["lengthUnit"],
        widthUnit: json["widthUnit"],
        weightUnit: json["weightUnit"],
        volumeUnit: json["volumeUnit"],
        ean: json["ean"],
        barcode: json["barcode"],
        qr: json["qr"],
        note: json["note"],
        attachment: json["attachment"],
    );


}

class RequestList {
    int? id;
    int? shiftId;
    String? category;
    String? type;
    dynamic numberOfStop;
    int? numberOfProduct;
    int? numberOfShift;
    DateTime? scheduledStart;
    DateTime? scheduledEnd;
    String? status;

    RequestList({
        this.id,
        this.shiftId,
        this.category,
        this.type,
        this.numberOfStop,
        this.numberOfProduct,
        this.numberOfShift,
        this.scheduledStart,
        this.scheduledEnd,
        this.status,
    });

    factory RequestList.fromJson(Map<String, dynamic> json) => RequestList(
        id: json["id"],
        shiftId: json["shiftId"],
        category: json["category"],
        type: json["type"],
        numberOfStop: json["numberOfStop"],
        numberOfProduct: json["numberOfProduct"],
        numberOfShift: json["numberOfShift"],
        scheduledStart: json["scheduledStart"] == null ? null : DateTime.parse(json["scheduledStart"]),
        scheduledEnd: json["scheduledEnd"] == null ? null : DateTime.parse(json["scheduledEnd"]),
        status: json["status"],
    );
}

class StopList {
    int? id;
    int? shiftStopId;
    int? shiftId;
    int? requestId;
    String? requestType;
    int? numberOfProduct;
    String? stopType;
    DateTime? scheduledStart;
    String? status;
    Address? address;
    dynamic contactId;
    dynamic contactName;
    String? name;
    dynamic email;
    dynamic phoneNo;
    dynamic cvr;
    dynamic addressId;
    DateTime? scheduledEnd;
    dynamic expectedServiceTimeMinutes;
    DateTime? actualStart;
    dynamic actualEnd;
    String? comment;
    bool? isSignatureRequired;
    bool? isAttachmentRequired;
    bool? isCommentRequired;
    List<dynamic>? attachment;
    dynamic verificationSignatureUrl;
    List<dynamic>? verificationAttachmentUrl;
    String? verificationComment;

    StopList({
        this.id,
        this.shiftStopId,
        this.shiftId,
        this.requestId,
        this.requestType,
        this.numberOfProduct,
        this.stopType,
        this.scheduledStart,
        this.status,
        this.address,
        this.contactId,
        this.contactName,
        this.name,
        this.email,
        this.phoneNo,
        this.cvr,
        this.addressId,
        this.scheduledEnd,
        this.expectedServiceTimeMinutes,
        this.actualStart,
        this.actualEnd,
        this.comment,
        this.isSignatureRequired,
        this.isAttachmentRequired,
        this.isCommentRequired,
        this.attachment,
        this.verificationSignatureUrl,
        this.verificationAttachmentUrl,
        this.verificationComment,
    });

    factory StopList.fromJson(Map<String, dynamic> json) => StopList(
        id: json["id"],
        shiftStopId: json["shiftStopId"],
        shiftId: json["shiftId"],
        requestId: json["requestId"],
        requestType: json["requestType"],
        numberOfProduct: json["numberOfProduct"],
        stopType: json["stopType"],
        scheduledStart: json["scheduledStart"] == null ? null : DateTime.parse(json["scheduledStart"]),
        status: json["status"],
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        contactId: json["contactId"],
        contactName: json["contactName"],
        name: json["name"],
        email: json["email"],
        phoneNo: json["phoneNo"],
        cvr: json["cvr"],
        addressId: json["addressId"],
        scheduledEnd: json["scheduledEnd"] == null ? null : DateTime.parse(json["scheduledEnd"]),
        expectedServiceTimeMinutes: json["expectedServiceTimeMinutes"],
        actualStart: json["actualStart"] == null ? null : DateTime.parse(json["actualStart"]),
        actualEnd: json["actualEnd"],
        comment: json["comment"],
        isSignatureRequired: json["isSignatureRequired"],
        isAttachmentRequired: json["isAttachmentRequired"],
        isCommentRequired: json["isCommentRequired"],
        attachment: json["attachment"] == null ? [] : List<dynamic>.from(json["attachment"]!.map((x) => x)),
        verificationSignatureUrl: json["verificationSignatureUrl"],
        verificationAttachmentUrl: json["verificationAttachmentUrl"] == null ? [] : List<dynamic>.from(json["verificationAttachmentUrl"]!.map((x) => x)),
        verificationComment: json["verificationComment"],
    );
}

class Address {
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

    Address({
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

    factory Address.fromJson(Map<String, dynamic> json) => Address(
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
}

class Summary {
    int? shiftId;
    int? numberOfRequest;
    int? numberOfCompletedRequest;
    int? numberOfInCompletedRequest;
    int? numberOfStop;
    int? numberOfCompletedStop;
    int? numberOfInCompletedStop;
    int? numberOfProduct;
    int? numberOfCompletedProduct;
    int? numberOfInCompletedProduct;

    Summary({
        this.shiftId,
        this.numberOfRequest,
        this.numberOfCompletedRequest,
        this.numberOfInCompletedRequest,
        this.numberOfStop,
        this.numberOfCompletedStop,
        this.numberOfInCompletedStop,
        this.numberOfProduct,
        this.numberOfCompletedProduct,
        this.numberOfInCompletedProduct,
    });

    factory Summary.fromJson(Map<String, dynamic> json) => Summary(
        shiftId: json["shiftId"],
        numberOfRequest: json["numberOfRequest"],
        numberOfCompletedRequest: json["numberOfCompletedRequest"],
        numberOfInCompletedRequest: json["numberOfInCompletedRequest"],
        numberOfStop: json["numberOfStop"],
        numberOfCompletedStop: json["numberOfCompletedStop"],
        numberOfInCompletedStop: json["numberOfInCompletedStop"],
        numberOfProduct: json["numberOfProduct"],
        numberOfCompletedProduct: json["numberOfCompletedProduct"],
        numberOfInCompletedProduct: json["numberOfInCompletedProduct"],
    );
}
