class ShiftPlannerState {
  bool? inProgress;
  ShiftPlannerState({this.inProgress = false});

  ShiftPlannerState copyWith({bool? inProgress}) {
    return ShiftPlannerState(inProgress: inProgress ?? this.inProgress);
  }
}
