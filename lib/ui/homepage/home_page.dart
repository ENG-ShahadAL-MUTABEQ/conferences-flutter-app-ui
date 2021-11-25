import 'package:conferences_app/module/category.dart';
import 'package:conferences_app/module/event.dart';
import 'package:conferences_app/ui/event_detail/event_details_page.dart';
import 'package:conferences_app/ui/homepage/category_widget.dart';
import 'package:conferences_app/ui/homepage/event_widget.dart';
import 'package:conferences_app/ui/homepage/home_page_background.dart';
import 'package:flutter/material.dart';
import 'package:conferences_app/styleguid.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider<AppState>(
            create: (_) => AppState(),
            child: Stack(children: <Widget>[
              HomePageBackground(
                screenHeight: MediaQuery.of(context).size.height,
              ),
              SafeArea(
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.person_outline,
                            color: Color(0x99FFFFFF),
                            size: 30,
                          ),
                          Spacer(),
                          Text(
                            "المؤتمرات",
                            style: fadedTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: Consumer<AppState>(
                            builder: (context, appState, _) =>
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(children: [
                                      for (final category in categories)
                                        CategoryWidget(category: category)
                                    ])))),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Consumer<AppState>(
                            builder: (context, appState, _) =>
                                Column(children: <Widget>[
                                  for (final event in events.where((e) => e
                                      .categoryIds
                                      .contains(appState.selectedCategoryId)))
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                EventDetailsPage(event: event),
                                          ),
                                        );
                                      },
                                      child: EventWidget(
                                        event: event,
                                      ),
                                    )
                                ])))
                  ])))
            ])));
  }
}
