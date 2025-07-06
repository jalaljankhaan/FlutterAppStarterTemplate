import 'package:flutterappstartertemplate/core/responsiveness/enums/device_types.dart';

import 'text_sizes/text_size.dart';
import 'gap/gap.dart';

class Calculator {
  Gap gap;
  TextSize textSize;
  Device device;

  Calculator({required this.gap, required this.textSize, required this.device});
}