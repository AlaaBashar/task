import '../src.export.dart';

abstract class InitConfig {
  static Future<void> inti() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = MyBlocObserver();
  }
}
