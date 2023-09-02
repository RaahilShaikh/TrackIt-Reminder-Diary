import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as INTL;

class DigitalClock extends StatefulWidget {
  final DateTime? datetime;
  final bool showSeconds;
  final BoxDecoration? decoration;
  final Color digitalClockTextColor;
  final EdgeInsets? padding;
  final bool isLive;
  final double textScaleFactor;
  final TextStyle? textStyle;

  const DigitalClock({this.datetime, this.showSeconds = true, this.decoration, this.padding, this.digitalClockTextColor = Colors.black, this.textScaleFactor = 1.0, this.textStyle, isLive, Key? key})
      : this.isLive = isLive ?? (datetime == null),
        super(key: key);
  const DigitalClock.dark(
      {this.datetime,
      this.showSeconds = true,
      this.padding,
      this.decoration = const BoxDecoration(color: Colors.black, shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(15))),
      this.digitalClockTextColor = Colors.white,
      this.textScaleFactor = 1.0,
      this.isLive = false,
      this.textStyle,
      Key? key})
      : super(key: key);
  const DigitalClock.light(
      {this.datetime,
      this.showSeconds = true,
      this.padding,
      this.decoration = const BoxDecoration(color: Colors.white, shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(15))),
      this.digitalClockTextColor = Colors.black,
      this.textScaleFactor = 1.0,
      this.isLive = false,
      this.textStyle,
      Key? key})
      : super(key: key);

  @override
  _DigitalClockState createState() => _DigitalClockState(datetime);
}

class _DigitalClockState extends State<DigitalClock> {
  DateTime initialDatetime; // to keep track of time changes
  DateTime datetime;

  Duration updateDuration = const Duration(seconds: 1); // repaint frequency
  _DigitalClockState(datetime)
      : this.datetime = datetime ?? DateTime.now(),
        initialDatetime = datetime ?? DateTime.now();

  initState() {
    super.initState();

    updateDuration = Duration(seconds: 1);
    if (widget.isLive) {
      // update clock every second or minute based on second hand's visibility.
      print("clock updated");
      Timer.periodic(updateDuration, update);
    }
  }

  update(Timer timer) {
    if (mounted) {
      // update is only called on live clocks. So, it's safe to update datetime.
      this.datetime = this.initialDatetime.add(updateDuration * timer.tick);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.decoration,
      padding: widget.padding,
      child: Container(
          constraints: BoxConstraints(minWidth: widget.showSeconds ? 110 * widget.textScaleFactor : 85.0 * widget.textScaleFactor, minHeight: 20.0 * widget.textScaleFactor),
          child: CustomPaint(
            painter: DigitalClockPainter(showSeconds: widget.showSeconds, datetime: datetime, digitalClockTextColor: widget.digitalClockTextColor, textScaleFactor: widget.textScaleFactor,textStyle: widget.textStyle),
          )),
    );
  }

  @override
  void didUpdateWidget(DigitalClock oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("DID UPDATE WIDGET CALLED");

    if (!widget.isLive && widget.datetime != oldWidget.datetime) {
      datetime = widget.datetime ?? DateTime.now();
    } else if (widget.isLive && widget.datetime != oldWidget.datetime) {
      initialDatetime = widget.datetime ?? DateTime.now();
    }
  }
}

class DigitalClockPainter extends CustomPainter {
  DateTime datetime;

  final Color digitalClockTextColor;
  final double textScaleFactor;
  final TextStyle? textStyle;
  //digital clock
  final bool showSeconds;

  DigitalClockPainter({
    required this.datetime,
    this.textStyle,
    this.showSeconds = true,
    this.digitalClockTextColor = Colors.black,
    this.textScaleFactor = 1.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double scaleFactor = 1;

    _paintDigitalClock(canvas, size, scaleFactor);
  }

  @override
  bool shouldRepaint(DigitalClockPainter oldDelegate) {
    return oldDelegate.datetime.isBefore(datetime);
  }

  void _paintDigitalClock(Canvas canvas, Size size, double scaleFactor) {
    String textToBeDisplayed = showSeconds ? INTL.DateFormat('h:mm:ss a').format(datetime) : INTL.DateFormat('h:mm a').format(datetime);
    TextSpan digitalClockSpan = TextSpan(style: textStyle ?? TextStyle(color: digitalClockTextColor, fontSize: 18 * scaleFactor * textScaleFactor, fontWeight: FontWeight.bold), text: textToBeDisplayed);
    TextPainter digitalClockTP = TextPainter(text: digitalClockSpan, textAlign: TextAlign.center, textDirection: TextDirection.ltr);
    digitalClockTP.layout();
    digitalClockTP.paint(canvas, size.center(-digitalClockTP.size.center(Offset(0.0, 0.0))));
  }
}
