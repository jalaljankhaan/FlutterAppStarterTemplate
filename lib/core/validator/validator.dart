import 'package:portfolio/core/states/page_states.dart';

abstract class Validator {
  PageState validate(String value);
}