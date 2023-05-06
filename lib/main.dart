import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter/common/common.dart';
import 'package:twitter/themes/app_theme.dart';
import 'features/features.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        title: 'Twitter',
        theme: AppTheme.theme,
        debugShowCheckedModeBanner: false,
        home: ref.watch(currentUserAccountProvider).when(
              data: (user) {
                if (user != null) {
                  return const HomeView();
                } else {
                  return const SignUpView();
                }
              },
              error: (e, st) => ErrorPage(error: e.toString()),
              loading: () => const LoadingPage(),
            ));
  }
}
