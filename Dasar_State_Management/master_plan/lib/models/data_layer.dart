export 'plan.dart';
export 'task.dart';

import 'package:flutter/foundation.dart';

@immutable
class Task {
  final String description;
  final bool complete;

  const Task({
    this.description = '',
    this.complete = false,
  });
}

@immutable
class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({
    this.name = '',
    this.tasks = const [],
  });
}

