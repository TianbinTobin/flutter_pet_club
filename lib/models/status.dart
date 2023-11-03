enum Status {
  idle,
  inProgress,
  success,
  failure,
}

extension StatusExtension on Status {
  bool get hasError => this == Status.failure;

  bool get isLoading => this == Status.inProgress;

  bool get isSuccessful => this == Status.success;
}
