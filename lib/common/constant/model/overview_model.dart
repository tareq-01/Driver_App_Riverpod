class OverviewSectionfghModel {
  int? _statusCode;
  String? _message;
  bool? _isSuccess;
  Data? _data;

  OverviewSectionfghModel(
      {int? statusCode, String? message, bool? isSuccess, Data? data}) {
    if (statusCode != null) {
      this._statusCode = statusCode;
    }
    if (message != null) {
      this._message = message;
    }
    if (isSuccess != null) {
      this._isSuccess = isSuccess;
    }
    if (data != null) {
      this._data = data;
    }
  }

  int? get statusCode => _statusCode;
  set statusCode(int? statusCode) => _statusCode = statusCode;
  String? get message => _message;
  set message(String? message) => _message = message;
  bool? get isSuccess => _isSuccess;
  set isSuccess(bool? isSuccess) => _isSuccess = isSuccess;
  Data? get data => _data;
  set data(Data? data) => _data = data;

  OverviewSectionfghModel.fromJson(Map<String, dynamic> json) {
    _statusCode = json['statusCode'];
    _message = json['message'];
    _isSuccess = json['isSuccess'];
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this._statusCode;
    data['message'] = this._message;
    data['isSuccess'] = this._isSuccess;
    if (this._data != null) {
      data['data'] = this._data!.toJson();
    }
    return data;
  }
}

class Data {
  Summary? _summary;
  List<Null>? _requestList;
  List<Null>? _stopList;
  List<Null>? _productList;
  CapacitySummary? _capacitySummary;

  Data(
      {Summary? summary,
        List<Null>? requestList,
        List<Null>? stopList,
        List<Null>? productList,
        CapacitySummary? capacitySummary}) {
    if (summary != null) {
      this._summary = summary;
    }
    if (requestList != null) {
      this._requestList = requestList;
    }
    if (stopList != null) {
      this._stopList = stopList;
    }
    if (productList != null) {
      this._productList = productList;
    }
    if (capacitySummary != null) {
      this._capacitySummary = capacitySummary;
    }
  }

  Summary? get summary => _summary;
  set summary(Summary? summary) => _summary = summary;
  List<Null>? get requestList => _requestList;
  set requestList(List<Null>? requestList) => _requestList = requestList;
  List<Null>? get stopList => _stopList;
  set stopList(List<Null>? stopList) => _stopList = stopList;
  List<Null>? get productList => _productList;
  set productList(List<Null>? productList) => _productList = productList;
  CapacitySummary? get capacitySummary => _capacitySummary;
  set capacitySummary(CapacitySummary? capacitySummary) =>
      _capacitySummary = capacitySummary;

  Data.fromJson(Map<String, dynamic> json) {
    _summary =
    json['summary'] != null ? new Summary.fromJson(json['summary']) : null;
    if (json['requestList'] != null) {
      _requestList = <Null>[];
      json['requestList'].forEach((v) {
        _requestList!.add(new Null.fromJson(v));
      });
    }
    if (json['stopList'] != null) {
      _stopList = <Null>[];
      json['stopList'].forEach((v) {
        _stopList!.add(new Null.fromJson(v));
      });
    }
    if (json['productList'] != null) {
      _productList = <Null>[];
      json['productList'].forEach((v) {
        _productList!.add(new Null.fromJson(v));
      });
    }
    _capacitySummary = json['capacitySummary'] != null
        ? new CapacitySummary.fromJson(json['capacitySummary'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._summary != null) {
      data['summary'] = this._summary!.toJson();
    }
    if (this._requestList != null) {
      data['requestList'] = this._requestList!.map((v) => v.toJson()).toList();
    }
    if (this._stopList != null) {
      data['stopList'] = this._stopList!.map((v) => v.toJson()).toList();
    }
    if (this._productList != null) {
      data['productList'] = this._productList!.map((v) => v.toJson()).toList();
    }
    if (this._capacitySummary != null) {
      data['capacitySummary'] = this._capacitySummary!.toJson();
    }
    return data;
  }
}

class Summary {
  int? _shiftId;
  int? _numberOfRequest;
  int? _numberOfCompletedRequest;
  int? _numberOfInCompletedRequest;
  int? _numberOfStop;
  int? _numberOfCompletedStop;
  int? _numberOfInCompletedStop;
  int? _numberOfProduct;
  int? _numberOfCompletedProduct;
  int? _numberOfInCompletedProduct;

  Summary(
      {int? shiftId,
        int? numberOfRequest,
        int? numberOfCompletedRequest,
        int? numberOfInCompletedRequest,
        int? numberOfStop,
        int? numberOfCompletedStop,
        int? numberOfInCompletedStop,
        int? numberOfProduct,
        int? numberOfCompletedProduct,
        int? numberOfInCompletedProduct}) {
    if (shiftId != null) {
      this._shiftId = shiftId;
    }
    if (numberOfRequest != null) {
      this._numberOfRequest = numberOfRequest;
    }
    if (numberOfCompletedRequest != null) {
      this._numberOfCompletedRequest = numberOfCompletedRequest;
    }
    if (numberOfInCompletedRequest != null) {
      this._numberOfInCompletedRequest = numberOfInCompletedRequest;
    }
    if (numberOfStop != null) {
      this._numberOfStop = numberOfStop;
    }
    if (numberOfCompletedStop != null) {
      this._numberOfCompletedStop = numberOfCompletedStop;
    }
    if (numberOfInCompletedStop != null) {
      this._numberOfInCompletedStop = numberOfInCompletedStop;
    }
    if (numberOfProduct != null) {
      this._numberOfProduct = numberOfProduct;
    }
    if (numberOfCompletedProduct != null) {
      this._numberOfCompletedProduct = numberOfCompletedProduct;
    }
    if (numberOfInCompletedProduct != null) {
      this._numberOfInCompletedProduct = numberOfInCompletedProduct;
    }
  }

  int? get shiftId => _shiftId;
  set shiftId(int? shiftId) => _shiftId = shiftId;
  int? get numberOfRequest => _numberOfRequest;
  set numberOfRequest(int? numberOfRequest) =>
      _numberOfRequest = numberOfRequest;
  int? get numberOfCompletedRequest => _numberOfCompletedRequest;
  set numberOfCompletedRequest(int? numberOfCompletedRequest) =>
      _numberOfCompletedRequest = numberOfCompletedRequest;
  int? get numberOfInCompletedRequest => _numberOfInCompletedRequest;
  set numberOfInCompletedRequest(int? numberOfInCompletedRequest) =>
      _numberOfInCompletedRequest = numberOfInCompletedRequest;
  int? get numberOfStop => _numberOfStop;
  set numberOfStop(int? numberOfStop) => _numberOfStop = numberOfStop;
  int? get numberOfCompletedStop => _numberOfCompletedStop;
  set numberOfCompletedStop(int? numberOfCompletedStop) =>
      _numberOfCompletedStop = numberOfCompletedStop;
  int? get numberOfInCompletedStop => _numberOfInCompletedStop;
  set numberOfInCompletedStop(int? numberOfInCompletedStop) =>
      _numberOfInCompletedStop = numberOfInCompletedStop;
  int? get numberOfProduct => _numberOfProduct;
  set numberOfProduct(int? numberOfProduct) =>
      _numberOfProduct = numberOfProduct;
  int? get numberOfCompletedProduct => _numberOfCompletedProduct;
  set numberOfCompletedProduct(int? numberOfCompletedProduct) =>
      _numberOfCompletedProduct = numberOfCompletedProduct;
  int? get numberOfInCompletedProduct => _numberOfInCompletedProduct;
  set numberOfInCompletedProduct(int? numberOfInCompletedProduct) =>
      _numberOfInCompletedProduct = numberOfInCompletedProduct;

  Summary.fromJson(Map<String, dynamic> json) {
    _shiftId = json['shiftId'];
    _numberOfRequest = json['numberOfRequest'];
    _numberOfCompletedRequest = json['numberOfCompletedRequest'];
    _numberOfInCompletedRequest = json['numberOfInCompletedRequest'];
    _numberOfStop = json['numberOfStop'];
    _numberOfCompletedStop = json['numberOfCompletedStop'];
    _numberOfInCompletedStop = json['numberOfInCompletedStop'];
    _numberOfProduct = json['numberOfProduct'];
    _numberOfCompletedProduct = json['numberOfCompletedProduct'];
    _numberOfInCompletedProduct = json['numberOfInCompletedProduct'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shiftId'] = this._shiftId;
    data['numberOfRequest'] = this._numberOfRequest;
    data['numberOfCompletedRequest'] = this._numberOfCompletedRequest;
    data['numberOfInCompletedRequest'] = this._numberOfInCompletedRequest;
    data['numberOfStop'] = this._numberOfStop;
    data['numberOfCompletedStop'] = this._numberOfCompletedStop;
    data['numberOfInCompletedStop'] = this._numberOfInCompletedStop;
    data['numberOfProduct'] = this._numberOfProduct;
    data['numberOfCompletedProduct'] = this._numberOfCompletedProduct;
    data['numberOfInCompletedProduct'] = this._numberOfInCompletedProduct;
    return data;
  }
}

class CapacitySummary {
  int? _shiftId;
  int? _weightCapacityKg;
  int? _usedWeightKg;
  int? _remainingWeightKg;
  int? _volumeCapacityCbm;
  int? _usedVolumeCbm;
  int? _remainingVolumeCbm;
  int? _liquidCapacityLiters;
  int? _usedLiquidLiters;
  int? _remainingLiquidLiters;
  int? _palletCapacity;
  int? _usedPallets;
  int? _remainingPallets;

  CapacitySummary(
      {int? shiftId,
        int? weightCapacityKg,
        int? usedWeightKg,
        int? remainingWeightKg,
        int? volumeCapacityCbm,
        int? usedVolumeCbm,
        int? remainingVolumeCbm,
        int? liquidCapacityLiters,
        int? usedLiquidLiters,
        int? remainingLiquidLiters,
        int? palletCapacity,
        int? usedPallets,
        int? remainingPallets}) {
    if (shiftId != null) {
      this._shiftId = shiftId;
    }
    if (weightCapacityKg != null) {
      this._weightCapacityKg = weightCapacityKg;
    }
    if (usedWeightKg != null) {
      this._usedWeightKg = usedWeightKg;
    }
    if (remainingWeightKg != null) {
      this._remainingWeightKg = remainingWeightKg;
    }
    if (volumeCapacityCbm != null) {
      this._volumeCapacityCbm = volumeCapacityCbm;
    }
    if (usedVolumeCbm != null) {
      this._usedVolumeCbm = usedVolumeCbm;
    }
    if (remainingVolumeCbm != null) {
      this._remainingVolumeCbm = remainingVolumeCbm;
    }
    if (liquidCapacityLiters != null) {
      this._liquidCapacityLiters = liquidCapacityLiters;
    }
    if (usedLiquidLiters != null) {
      this._usedLiquidLiters = usedLiquidLiters;
    }
    if (remainingLiquidLiters != null) {
      this._remainingLiquidLiters = remainingLiquidLiters;
    }
    if (palletCapacity != null) {
      this._palletCapacity = palletCapacity;
    }
    if (usedPallets != null) {
      this._usedPallets = usedPallets;
    }
    if (remainingPallets != null) {
      this._remainingPallets = remainingPallets;
    }
  }

  int? get shiftId => _shiftId;
  set shiftId(int? shiftId) => _shiftId = shiftId;
  int? get weightCapacityKg => _weightCapacityKg;
  set weightCapacityKg(int? weightCapacityKg) =>
      _weightCapacityKg = weightCapacityKg;
  int? get usedWeightKg => _usedWeightKg;
  set usedWeightKg(int? usedWeightKg) => _usedWeightKg = usedWeightKg;
  int? get remainingWeightKg => _remainingWeightKg;
  set remainingWeightKg(int? remainingWeightKg) =>
      _remainingWeightKg = remainingWeightKg;
  int? get volumeCapacityCbm => _volumeCapacityCbm;
  set volumeCapacityCbm(int? volumeCapacityCbm) =>
      _volumeCapacityCbm = volumeCapacityCbm;
  int? get usedVolumeCbm => _usedVolumeCbm;
  set usedVolumeCbm(int? usedVolumeCbm) => _usedVolumeCbm = usedVolumeCbm;
  int? get remainingVolumeCbm => _remainingVolumeCbm;
  set remainingVolumeCbm(int? remainingVolumeCbm) =>
      _remainingVolumeCbm = remainingVolumeCbm;
  int? get liquidCapacityLiters => _liquidCapacityLiters;
  set liquidCapacityLiters(int? liquidCapacityLiters) =>
      _liquidCapacityLiters = liquidCapacityLiters;
  int? get usedLiquidLiters => _usedLiquidLiters;
  set usedLiquidLiters(int? usedLiquidLiters) =>
      _usedLiquidLiters = usedLiquidLiters;
  int? get remainingLiquidLiters => _remainingLiquidLiters;
  set remainingLiquidLiters(int? remainingLiquidLiters) =>
      _remainingLiquidLiters = remainingLiquidLiters;
  int? get palletCapacity => _palletCapacity;
  set palletCapacity(int? palletCapacity) => _palletCapacity = palletCapacity;
  int? get usedPallets => _usedPallets;
  set usedPallets(int? usedPallets) => _usedPallets = usedPallets;
  int? get remainingPallets => _remainingPallets;
  set remainingPallets(int? remainingPallets) =>
      _remainingPallets = remainingPallets;

  CapacitySummary.fromJson(Map<String, dynamic> json) {
    _shiftId = json['shiftId'];
    _weightCapacityKg = json['weightCapacityKg'];
    _usedWeightKg = json['usedWeightKg'];
    _remainingWeightKg = json['remainingWeightKg'];
    _volumeCapacityCbm = json['volumeCapacityCbm'];
    _usedVolumeCbm = json['usedVolumeCbm'];
    _remainingVolumeCbm = json['remainingVolumeCbm'];
    _liquidCapacityLiters = json['liquidCapacityLiters'];
    _usedLiquidLiters = json['usedLiquidLiters'];
    _remainingLiquidLiters = json['remainingLiquidLiters'];
    _palletCapacity = json['palletCapacity'];
    _usedPallets = json['usedPallets'];
    _remainingPallets = json['remainingPallets'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shiftId'] = this._shiftId;
    data['weightCapacityKg'] = this._weightCapacityKg;
    data['usedWeightKg'] = this._usedWeightKg;
    data['remainingWeightKg'] = this._remainingWeightKg;
    data['volumeCapacityCbm'] = this._volumeCapacityCbm;
    data['usedVolumeCbm'] = this._usedVolumeCbm;
    data['remainingVolumeCbm'] = this._remainingVolumeCbm;
    data['liquidCapacityLiters'] = this._liquidCapacityLiters;
    data['usedLiquidLiters'] = this._usedLiquidLiters;
    data['remainingLiquidLiters'] = this._remainingLiquidLiters;
    data['palletCapacity'] = this._palletCapacity;
    data['usedPallets'] = this._usedPallets;
    data['remainingPallets'] = this._remainingPallets;
    return data;
  }
}