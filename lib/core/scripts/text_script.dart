extension NullOrEmptyString on String? {
  String value({String defaultValue = ''}) {
    return this == null || this!.isEmpty ? defaultValue : toString();
  }
}