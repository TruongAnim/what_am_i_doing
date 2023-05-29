class DatetimeUtils {
  static DateTime getToday() {
    DateTime today = DateTime.now();
    return DateTime(today.year, today.month, today.day);
  }
}
