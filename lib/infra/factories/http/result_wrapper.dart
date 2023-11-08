class ResultWrapper<T> {
  late T? data;
  late bool isSuccess;
  late String? message;

  ResultWrapper({Object? payload, this.message}) {
    this.data = payload as T?;
    this.isSuccess = payload != null ? true : false;
    this.message = payload != null ? message : '';
  }

  @override
  String toString() {
    return 'ResultWrapper{data: $data, isSuccess: $isSuccess, message: $message}';
  }
}
