import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedNotifier<ValueNotifier<List<Plan>>> {
  const PlanProvider(
      {super.key,
      required Widget child,
      required ValueNotifier<List<Plan>> notifier})
      : super(child: child, notifier: notifier);

  static ValueNotifier<List<Plan>> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PlanProvider>()!
        .notifier!;
  }
}
//Praktikum 2
// class PlanProvider extends InheritedNotifier<ValueNotifier<Plan>> {
//   const PlanProvider(
//       {super.key, required Widget child, required ValueNotifier<Plan> notifier})
//       : super(child: child, notifier: notifier);

//   static ValueNotifier<Plan> of(BuildContext context) {
//     return context
//         .dependOnInheritedWidgetOfExactType<PlanProvider>()!
//         .notifier!;
//   }
// }
