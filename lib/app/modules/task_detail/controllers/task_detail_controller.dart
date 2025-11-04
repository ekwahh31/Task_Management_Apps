import 'package:get/get.dart';

class TaskDetailController extends GetxController {
  final task = {}.obs;

  @override
  void onInit() {
    super.onInit();
    // Get task data from arguments
    if (Get.arguments != null) {
      task.value = Get.arguments;
    }
  }

  void markAsComplete() {
    Get.snackbar(
      'Berhasil',
      'Tugas telah ditandai selesai!',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void deleteTask() {
    Get.defaultDialog(
      title: 'Hapus Tugas',
      middleText: 'Apakah Anda yakin ingin menghapus tugas ini?',
      textConfirm: 'Hapus',
      textCancel: 'Batal',
      confirmTextColor: Get.theme.colorScheme.onPrimary,
      onConfirm: () {
        Get.back(); // Close dialog
        Get.back(); // Back to home
        Get.snackbar(
          'Berhasil',
          'Tugas berhasil dihapus!',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2),
        );
      },
    );
  }
}
