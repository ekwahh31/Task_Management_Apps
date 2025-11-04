part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const ADD_TASK = _Paths.ADD_TASK;
  static const TASK_DETAIL = _Paths.TASK_DETAIL;
  static const CALENDAR = _Paths.CALENDAR;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const ADD_TASK = '/add-task';
  static const TASK_DETAIL = '/task-detail';
  static const CALENDAR = '/calendar';
}
