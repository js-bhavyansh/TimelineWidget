import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_widget/components/event_card.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  const MyTimelineTile({super.key, required this.isFirst, required this.isLast, required this.isPast, this.eventCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Gap between events
      height: 200,

      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,

        // Decorate the lines
        beforeLineStyle: LineStyle(
          color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
        ),

        // Decorate icon
        indicatorStyle: IndicatorStyle(
          width: 20,
          color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
          iconStyle: IconStyle(
              iconData: Icons.done,
              color: isPast ? Colors.white : Colors.deepPurple.shade100
          )
        ),

        // Event Card
        endChild: EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
