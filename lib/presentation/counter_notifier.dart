import 'package:sample_app/domain/count_state/count.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, Count>(
  (ref) => CounterNotifier(
    const Count(0),
  ),
);

class CounterNotifier extends StateNotifier<Count> {
  CounterNotifier(Count state) : super(state);

  void increment() {
    state = state.copyWith(value: state.value + 1);
  }
}
