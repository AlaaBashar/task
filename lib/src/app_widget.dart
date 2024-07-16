import 'src.export.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocProvider<SendOtpCubit>(create: (_) => SendOtpCubit(AuthRepoImpl())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Task',
        theme: AppMode.lightTheme,
        home: const PhoneNumberScreen(),
      ),
    );
  }
}
