//Bus初始化
import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class HYVideoPlayEvent {
  final String vid;
  HYVideoPlayEvent(this.vid);
}
