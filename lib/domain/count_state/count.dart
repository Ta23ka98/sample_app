import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'count.freezed.dart';

@freezed
class Count with _$Count {
  @Assert('value >= 0')
  const factory Count([
    @Default(0) int value,
  ]) = _Count;
}
