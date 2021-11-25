import 'package:conferences_app/module/event.dart';
import 'package:conferences_app/styleguid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventDetailsContent extends StatelessWidget {
  const EventDetailsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
            child: Text(
              event.title,
              style: eventWhiteTitleTextStyle,
              textDirection: TextDirection.rtl,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.24),
            child: FittedBox(
              child: Row(
                children: <Widget>[
                  Text(
                    "-",
                    style: eventLocationTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(event.location,
                      style: eventLocationTextStyle.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w700),
                      textDirection: TextDirection.rtl),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200.0, top: 10.0),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'المُتحدّث :',
                    style: guestTextStyle,
                    textDirection: TextDirection.rtl,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('images/Avatar.png'),
                  radius: 40.0,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              textDirection: TextDirection.rtl,
              text: TextSpan(
                children: [
                  TextSpan(text: event.punchLine1, style: punchLine1TextStyle),
                  TextSpan(text: event.punchLine2, style: punchLine2TextStyle)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF003928)),
                minimumSize: MaterialStateProperty.all(const Size(200, 40)),
              ),
              child: const Text('تسجيل',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
