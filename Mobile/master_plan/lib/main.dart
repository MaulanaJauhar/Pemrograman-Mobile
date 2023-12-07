import 'package:flutter/material.dart';
import 'package:master_plan/models/plan.dart';
import 'package:master_plan/plan_provider.dart';
import 'package:master_plan/views/plan_creator_screen.dart';

void main() => runApp(const MaterialApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'State Management App',
        theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
        home: const PlanCreatorScreen(),
      ),
    );
  }
  //Praktikum 2
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(useMaterial3: false, primarySwatch: Colors.purple),
  //     home: PlanProvider(
  //       notifier: ValueNotifier<Plan>(const Plan()),
  //       child: const PlanScreen(),
  //     ),
  //   );
  // }
}
