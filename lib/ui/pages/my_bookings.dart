import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../ticket_widget.dart';
import '../widgets/custom_tapbar.dart';
import '../widgets/my_app_bar.dart';
import 'my_booking_details.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({super.key});

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  int _page = 0;

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).secondaryHeaderColor;
    return Scaffold(
        appBar: MyAppBar.transparent(
          title: 'My Bookings',
          leading: const Icon(Icons.keyboard_backspace),
        ),
        backgroundColor: color,
        body: Column(
          children: [
            Flexible(
              child: CustomTabbar(
                tabs: <CustomTab>[
                  _tap('Outlet', 0),
                  _tap('World Tour', 1),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    _page = value;
                  });
                },
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: _ticketList(context),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Hello World :)',
                      style: TextStyle(color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  List<Map<String, dynamic>> _data() {
    return [
      {
        'city': 'Auckland',
        'country': 'USA',
        'time_start': '10:00',
        'time_end': '10:30',
        'booking_id': 'WTS0012',
        'price': 'USD 100',
        'date': '01-aug-2020'
      },
      {
        'city': 'Riyadh',
        'country': 'KSA',
        'time_start': '14:00',
        'time_end': '15:30',
        'booking_id': 'AWC3061',
        'price': 'USD 10',
        'date': '17-sep-2020'
      },
    ];
  }

  List<Widget> _ticketList(BuildContext cx) {
    return List.generate(
      _data().length,
      (i) => TicketWidget(
        screenSize: MediaQuery.sizeOf(cx),
        data: _data()[i],
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => MyBookingDetails(
                        data: _data()[i],
                      )));
        },
      ),
    );
  }

  CustomTab _tap(String title, int position) {
    return CustomTab(
      active: _page == position,
      activeColor: Theme.of(context).colorScheme.secondary,
      activeTextColor: Colors.white,
      title: title,
      onTap: () {
        _controller.animateToPage(
          position,
          duration: Durations.extralong1,
          curve: Curves.easeInOutCubic,
        );
      },
    );
  }
}
