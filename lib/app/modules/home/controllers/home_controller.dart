import 'package:get/get.dart';

class HomeController extends GetxController {
  // Dummy data for static pages
  final todayTasks = [
    {
      'title': 'Menyelesaikan Tugas PEMOB',
      'category': 'Kuliah',
      'time': '10:00 AM',
      'isDone': false,
    },
    {
      'title': 'Meeting dengan Tim Proyek',
      'category': 'Pekerjaan',
      'time': '02:00 PM',
      'isDone': false,
    },
    {
      'title': 'Beli Bahan Makanan',
      'category': 'Personal',
      'time': '05:00 PM',
      'isDone': true,
    },
  ].obs;

  final otherTasks = [
    {
      'title': 'Membaca Buku Flutter',
      'category': 'Belajar',
      'date': '10 Nov 2025',
      'isDone': false,
    },
    {
      'title': 'Olahraga Rutin',
      'category': 'Kesehatan',
      'date': '12 Nov 2025',
      'isDone': false,
    },
    {
      'title': 'Bayar Tagihan Listrik',
      'category': 'Rumah',
      'date': '15 Nov 2025',
      'isDone': false,
    },
  ].obs;
}
