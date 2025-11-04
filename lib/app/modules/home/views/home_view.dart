import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/task_card.dart';
import '../widgets/section_header.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize controller
    Get.put(HomeController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 13, 0, 255),
        title: const Text(
          'TaskManagement',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () => Get.toNamed('/calendar'),
            tooltip: 'Calendar View',
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const Text(
                'Halo! Selamat Datang',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3142),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Hari ini, ${DateTime.now().day} November 2025',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 30),

              // Tugas Hari Ini Section
              Obx(() => SectionHeader(
                    title: 'Tugas Hari Ini',
                    taskCount: controller.todayTasks.length,
                    badgeColor: const Color.fromARGB(255, 13, 0, 255),
                  )),
              const SizedBox(height: 15),

              // Today Tasks List
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.todayTasks.length,
                    itemBuilder: (context, index) {
                      final task = controller.todayTasks[index];
                      return TodayTaskCard(task: task);
                    },
                  )),

              const SizedBox(height: 30),

              // Tugas Lainnya Section
              Obx(() => SectionHeader(
                    title: 'Tugas Lainnya',
                    taskCount: controller.otherTasks.length,
                    badgeColor: const Color.fromARGB(255, 13, 0, 255),
                  )),
              const SizedBox(height: 15),

              // Other Tasks List
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.otherTasks.length,
                    itemBuilder: (context, index) {
                      final task = controller.otherTasks[index];
                      return OtherTaskCard(task: task);
                    },
                  )),
              
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Get.toNamed('/add-task'),
        backgroundColor: const Color.fromARGB(255, 13, 0, 255),
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          'Tambah Tugas',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
