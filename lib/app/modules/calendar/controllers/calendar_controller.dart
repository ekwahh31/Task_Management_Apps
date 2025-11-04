import 'package:get/get.dart';

class CalendarController extends GetxController {
  final selectedDay = DateTime.now().obs;
  final focusedDay = DateTime.now().obs;

  // Dummy data for tasks with dates
  final tasksWithDates = {
    DateTime(2025, 11, 4): ['Menyelesaikan Tugas PEMOB', 'Meeting dengan Tim'],
    DateTime(2025, 11, 10): ['Membaca Buku Flutter'],
    DateTime(2025, 11, 12): ['Olahraga Rutin'],
    DateTime(2025, 11, 15): ['Bayar Tagihan Listrik'],
    DateTime(2025, 11, 20): ['Presentasi Proyek'],
    DateTime(2025, 11, 25): ['Check-up Kesehatan'],
  }.obs;

  void onDaySelected(DateTime selected, DateTime focused) {
    selectedDay.value = selected;
    focusedDay.value = focused;
  }

  List<String> getTasksForDay(DateTime day) {
    return tasksWithDates[DateTime(day.year, day.month, day.day)] ?? [];
  }

  bool hasTasksOnDay(DateTime day) {
    return tasksWithDates
        .containsKey(DateTime(day.year, day.month, day.day));
  }
}
