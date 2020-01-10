import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tuto/model/event.dart';

import 'event_details_background.dart';
import 'event_details_content.dart';

class EventDetailsPage extends StatelessWidget {
  final Event event;

  const EventDetailsPage({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: Stack(
          children: <Widget>[
            EventDetailsBackground(),
            EventDetailsContent()],
        ),
      ),
    );
  }
}
