import 'package:get/get.dart';

class AddTaskController extends GetxController {
  final selectedCategory = 'Kuliah'.obs;
  final categories = ['Kuliah', 'Pekerjaan', 'Personal', 'Belajar', 'Kesehatan', 'Rumah'].obs;

  void changeCategory(String category) {
    selectedCategory.value = category;
  }

  void saveTask() {
    // Show success message
    Get.snackbar(
      'Berhasil',
      'Tugas berhasil ditambahkan!',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
    // Navigate back to home
    Future.delayed(const Duration(seconds: 1), () {
      Get.back();
    });
  }
}
