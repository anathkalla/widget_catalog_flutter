import 'package:flutter/material.dart';

import '../../global/global.dart';

/// Flutter code sample for [FilterChip].

enum ExerciseFilter { walking, running, cycling, hiking }

class CsFilterChip extends StatefulWidget {
  const CsFilterChip({super.key});

  @override
  State<CsFilterChip> createState() => _CsFilterChipState();
}

class _CsFilterChipState extends State<CsFilterChip> {
  Set<ExerciseFilter> filters = <ExerciseFilter>{};

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(Stringof.wFilterChip, style: textTheme.labelLarge),
          const SizedBox(height: 5.0),
          Wrap(
            spacing: 5.0,
            children: ExerciseFilter.values.map((ExerciseFilter exercise) {
              return FilterChip(
                label: Text(exercise.name),
                selected: filters.contains(exercise),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.add(exercise);
                    } else {
                      filters.remove(exercise);
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Looking for: ${filters.map((ExerciseFilter e) => e.name).join(', ')}',
            style: textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
