import 'package:get/get.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/add_task/views/add_task_view.dart';
import '../modules/task_detail/views/task_detail_view.dart';
import '../modules/calendar/views/calendar_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
    ),
    GetPage(
      name: _Paths.ADD_TASK,
      page: () => const AddTaskView(),
    ),
    GetPage(
      name: _Paths.TASK_DETAIL,
      page: () => const TaskDetailView(),
    ),
    GetPage(
      name: _Paths.CALENDAR,
      page: () => const CalendarView(),
    ),
  ];
}
