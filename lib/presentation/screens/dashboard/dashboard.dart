import 'package:adonis_web_test/presentation/screens/dashboard/dashboard_controller.dart';
import 'package:adonis_web_test/presentation/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Dashboard extends ConsumerWidget {
  static const routeName = "/dash";

  static Route route() => MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => Dashboard());

  @override
  Widget build(BuildContext context, ScopedReader read) {
    return Scaffold(
        body: Row(
      children: [
        NavigationBar(),
        Expanded(
          child: TextButton(
            child: Text("test"),
            onPressed: context.read(dashboardControllerProvider).testBtn,
          ),
        )
      ],
    ));
  }
}
