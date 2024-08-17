import 'package:flutter/material.dart';

class TicketQrRightPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.moveTo(size.width * 0.9456699, 0);
    p.lineTo(size.width * 0.5526961, 0);
    p.cubicTo(
        size.width * 0.5526961,
        size.height * 0.03833049,
        size.width * 0.5396242,
        size.height * 0.07069847,
        size.width * 0.5220588,
        size.height * 0.07836457);
    p.lineTo(size.width * 0.5261438, size.height * 0.08688245);
    p.lineTo(size.width * 0.5151144, size.height * 0.1098807);
    p.lineTo(size.width * 0.5261438, size.height * 0.1328790);
    p.lineTo(size.width * 0.5151144, size.height * 0.1558773);
    p.lineTo(size.width * 0.5261438, size.height * 0.1788756);
    p.lineTo(size.width * 0.5151144, size.height * 0.2018739);
    p.lineTo(size.width * 0.5261438, size.height * 0.2248722);
    p.lineTo(size.width * 0.5151144, size.height * 0.2478705);
    p.lineTo(size.width * 0.5261438, size.height * 0.2708688);
    p.lineTo(size.width * 0.5151144, size.height * 0.2938671);
    p.lineTo(size.width * 0.5261438, size.height * 0.3168654);
    p.lineTo(size.width * 0.5151144, size.height * 0.3398637);
    p.lineTo(size.width * 0.5261438, size.height * 0.3628620);
    p.lineTo(size.width * 0.5151144, size.height * 0.3858603);
    p.lineTo(size.width * 0.5261438, size.height * 0.4088586);
    p.lineTo(size.width * 0.5151144, size.height * 0.4318569);
    p.lineTo(size.width * 0.5261438, size.height * 0.4548552);
    p.lineTo(size.width * 0.5151144, size.height * 0.4778535);
    p.lineTo(size.width * 0.5261438, size.height * 0.5008518);
    p.lineTo(size.width * 0.5151144, size.height * 0.5238501);
    p.lineTo(size.width * 0.5261438, size.height * 0.5468484);
    p.lineTo(size.width * 0.5151144, size.height * 0.5698467);
    p.lineTo(size.width * 0.5261438, size.height * 0.5928450);
    p.lineTo(size.width * 0.5151144, size.height * 0.6158433);
    p.lineTo(size.width * 0.5261438, size.height * 0.6388416);
    p.lineTo(size.width * 0.5151144, size.height * 0.6618399);
    p.lineTo(size.width * 0.5261438, size.height * 0.6848382);
    p.lineTo(size.width * 0.5151144, size.height * 0.7078365);
    p.lineTo(size.width * 0.5261438, size.height * 0.7308348);
    p.lineTo(size.width * 0.5151144, size.height * 0.7538330);
    p.lineTo(size.width * 0.5261438, size.height * 0.7768313);
    p.lineTo(size.width * 0.5151144, size.height * 0.7998296);
    p.lineTo(size.width * 0.5261438, size.height * 0.8228279);
    p.lineTo(size.width * 0.5151144, size.height * 0.8458262);
    p.lineTo(size.width * 0.5261438, size.height * 0.8688245);
    p.lineTo(size.width * 0.5151144, size.height * 0.8918228);
    p.lineTo(size.width * 0.5261438, size.height * 0.9148211);
    p.lineTo(size.width * 0.5257353, size.height * 0.9156729);
    p.cubicTo(
        size.width * 0.5412582,
        size.height * 0.9258944,
        size.width * 0.5526961,
        size.height * 0.9565588,
        size.width * 0.5526961,
        size.height * 0.9923339);
    p.lineTo(size.width * 0.9456699, size.height * 0.9923339);
    p.cubicTo(
        size.width * 0.9758987,
        size.height * 0.9923339,
        size.width * 1.000408,
        size.height * 0.9412266,
        size.width * 1.000408,
        size.height * 0.8781942);
    p.lineTo(size.width * 1.000408, size.height * 0.1141397);
    p.cubicTo(size.width, size.height * 0.05110733, size.width * 0.9754902, 0,
        size.width * 0.9456699, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class TicketQrLeftPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.moveTo(size.width * 0.5200163, size.height * 0.9199319);
    p.lineTo(size.width * 0.5098039, size.height * 0.8986371);
    p.lineTo(size.width * 0.5208333, size.height * 0.8756388);
    p.lineTo(size.width * 0.5098039, size.height * 0.8526405);
    p.lineTo(size.width * 0.5208333, size.height * 0.8296422);
    p.lineTo(size.width * 0.5098039, size.height * 0.8066440);
    p.lineTo(size.width * 0.5208333, size.height * 0.7836457);
    p.lineTo(size.width * 0.5098039, size.height * 0.7606474);
    p.lineTo(size.width * 0.5208333, size.height * 0.7376491);
    p.lineTo(size.width * 0.5098039, size.height * 0.7146508);
    p.lineTo(size.width * 0.5208333, size.height * 0.6916525);
    p.lineTo(size.width * 0.5098039, size.height * 0.6686542);
    p.lineTo(size.width * 0.5208333, size.height * 0.6456559);
    p.lineTo(size.width * 0.5098039, size.height * 0.6226576);
    p.lineTo(size.width * 0.5208333, size.height * 0.5996593);
    p.lineTo(size.width * 0.5098039, size.height * 0.5766610);
    p.lineTo(size.width * 0.5208333, size.height * 0.5536627);
    p.lineTo(size.width * 0.5098039, size.height * 0.5306644);
    p.lineTo(size.width * 0.5208333, size.height * 0.5076661);
    p.lineTo(size.width * 0.5098039, size.height * 0.4846678);
    p.lineTo(size.width * 0.5208333, size.height * 0.4616695);
    p.lineTo(size.width * 0.5098039, size.height * 0.4386712);
    p.lineTo(size.width * 0.5208333, size.height * 0.4156729);
    p.lineTo(size.width * 0.5098039, size.height * 0.3926746);
    p.lineTo(size.width * 0.5208333, size.height * 0.3696763);
    p.lineTo(size.width * 0.5098039, size.height * 0.3466780);
    p.lineTo(size.width * 0.5208333, size.height * 0.3236797);
    p.lineTo(size.width * 0.5098039, size.height * 0.3006814);
    p.lineTo(size.width * 0.5208333, size.height * 0.2776831);
    p.lineTo(size.width * 0.5098039, size.height * 0.2546848);
    p.lineTo(size.width * 0.5208333, size.height * 0.2316865);
    p.lineTo(size.width * 0.5098039, size.height * 0.2086882);
    p.lineTo(size.width * 0.5208333, size.height * 0.1856899);
    p.lineTo(size.width * 0.5098039, size.height * 0.1626917);
    p.lineTo(size.width * 0.5208333, size.height * 0.1396934);
    p.lineTo(size.width * 0.5098039, size.height * 0.1166951);
    p.lineTo(size.width * 0.5208333, size.height * 0.09369676);
    p.lineTo(size.width * 0.5175654, size.height * 0.08688245);
    p.cubicTo(
        size.width * 0.4983660,
        size.height * 0.08262351,
        size.width * 0.4832516,
        size.height * 0.04855196,
        size.width * 0.4832516,
        size.height * 0.006814310);
    p.lineTo(size.width * 0.05433007, size.height * 0.006814310);
    p.cubicTo(size.width * 0.02450980, 0, 0, size.height * 0.05110733, 0,
        size.height * 0.1141397);
    p.lineTo(0, size.height * 0.8858603);
    p.cubicTo(0, size.height * 0.9488927, size.width * 0.02450980, size.height,
        size.width * 0.05473856, size.height);
    p.lineTo(size.width * 0.4836601, size.height);
    p.cubicTo(
        size.width * 0.4836601,
        size.height * 0.9582624,
        size.width * 0.4987745,
        size.height * 0.9241908,
        size.width * 0.5183824,
        size.height * 0.9199319);
    p.cubicTo(
        size.width * 0.5187908,
        size.height * 0.9199319,
        size.width * 0.5191993,
        size.height * 0.9199319,
        size.width * 0.5200163,
        size.height * 0.9199319);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
