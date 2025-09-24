class ShiftDetailsState {
  bool? inProgress;
  
  ShiftDetailsState({this.inProgress = false});

  ShiftDetailsState copyWith({bool? inProgress}) {
    return ShiftDetailsState(inProgress: inProgress ?? this.inProgress);
  }
}
