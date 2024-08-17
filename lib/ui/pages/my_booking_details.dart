import 'package:doc_book_ui/ui/ticket_qr_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/my_app_bar.dart';

class MyBookingDetails extends StatelessWidget {
  const MyBookingDetails({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).secondaryHeaderColor;
    return Scaffold(
      // extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: MyAppBar.transparent(
        title: 'Booking Details',
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.keyboard_backspace)),
      ),
      backgroundColor: color,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * .8,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                ),
              ]),
          child: Column(
            children: [
              TicketQrWidget(
                screenSize: MediaQuery.sizeOf(context),
                data: data,
                onTap: () {},
              ),
              _data()
            ],
          ),
        ),
      ),
    );
  }

  Widget _data() {
    TextStyle st1 = const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
    TextStyle st2 = const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
    TextStyle st3 = const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'data1',
                        style: st2,
                      ),
                      Text(
                        'data1',
                        style: st3,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'data2',
                        style: st2,
                      ),
                      Text(
                        'data2',
                        style: st3,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'data3',
                    style: st2,
                  ),
                  Text(
                    'data3',
                    style: st3,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: .3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'data1',
                        style: st2,
                      ),
                      Text(
                        'data1',
                        style: st3,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'data2',
                        style: st2,
                      ),
                      Text(
                        'data2',
                        style: st3,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'data3',
                    style: st2,
                  ),
                  Text(
                    'data3',
                    style: st3,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
