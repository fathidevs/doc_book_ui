import 'package:flutter/material.dart';

class TicketPathLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.moveTo(size.width * 0.7183681, size.height * 0.9206093);
    p.lineTo(size.width * 0.7082168, size.height * 0.8989280);
    p.lineTo(size.width * 0.7190577, size.height * 0.8757153);
    p.lineTo(size.width * 0.7082168, size.height * 0.8525026);
    p.lineTo(size.width * 0.7190577, size.height * 0.8292899);
    p.lineTo(size.width * 0.7082168, size.height * 0.8060772);
    p.lineTo(size.width * 0.7190577, size.height * 0.7828645);
    p.lineTo(size.width * 0.7082168, size.height * 0.7596518);
    p.lineTo(size.width * 0.7190577, size.height * 0.7364391);
    p.lineTo(size.width * 0.7082168, size.height * 0.7132264);
    p.lineTo(size.width * 0.7190577, size.height * 0.6900137);
    p.lineTo(size.width * 0.7082168, size.height * 0.6668010);
    p.lineTo(size.width * 0.7190577, size.height * 0.6435883);
    p.lineTo(size.width * 0.7082168, size.height * 0.6203756);
    p.lineTo(size.width * 0.7190577, size.height * 0.5971629);
    p.lineTo(size.width * 0.7082168, size.height * 0.5739502);
    p.lineTo(size.width * 0.7190577, size.height * 0.5507375);
    p.lineTo(size.width * 0.7082168, size.height * 0.5275248);
    p.lineTo(size.width * 0.7190577, size.height * 0.5043121);
    p.lineTo(size.width * 0.7082168, size.height * 0.4810994);
    p.lineTo(size.width * 0.7190577, size.height * 0.4578867);
    p.lineTo(size.width * 0.7082168, size.height * 0.4346740);
    p.lineTo(size.width * 0.7190577, size.height * 0.4114613);
    p.lineTo(size.width * 0.7082168, size.height * 0.3882486);
    p.lineTo(size.width * 0.7190577, size.height * 0.3650359);
    p.lineTo(size.width * 0.7082168, size.height * 0.3418232);
    p.lineTo(size.width * 0.7190577, size.height * 0.3186105);
    p.lineTo(size.width * 0.7082168, size.height * 0.2953978);
    p.lineTo(size.width * 0.7190577, size.height * 0.2721851);
    p.lineTo(size.width * 0.7082168, size.height * 0.2489724);
    p.lineTo(size.width * 0.7190577, size.height * 0.2257597);
    p.lineTo(size.width * 0.7082168, size.height * 0.2025469);
    p.lineTo(size.width * 0.7190577, size.height * 0.1793342);
    p.lineTo(size.width * 0.7082168, size.height * 0.1561215);
    p.lineTo(size.width * 0.7190577, size.height * 0.1329088);
    p.lineTo(size.width * 0.7082168, size.height * 0.1096961);
    p.lineTo(size.width * 0.7190577, size.height * 0.08648344);
    p.lineTo(size.width * 0.7157633, size.height * 0.07947127);
    p.cubicTo(
        size.width * 0.6967248,
        size.height * 0.07487709,
        size.width * 0.6819000,
        size.height * 0.04086403,
        size.width * 0.6819000,
        size.height * -0.0004029983);
    p.lineTo(size.width * 0.05412756, size.height * -0.0004029983);
    p.cubicTo(size.width * 0.02420992, 0, 0, size.height * 0.05093899, 0,
        size.height * 0.1138873);
    p.lineTo(0, size.height * 0.8861933);
    p.cubicTo(
        0,
        size.height * 0.9490610,
        size.width * 0.02420992,
        size.height * 1.000081,
        size.width * 0.05412756,
        size.height * 1.000081);
    p.lineTo(size.width * 0.6819383, size.height * 1.000081);
    p.cubicTo(
        size.width * 0.6819383,
        size.height * 0.9583300,
        size.width * 0.6970312,
        size.height * 0.9240751,
        size.width * 0.7163379,
        size.height * 0.9200451);
    p.cubicTo(
        size.width * 0.7170274,
        size.height * 0.9201257,
        size.width * 0.7176786,
        size.height * 0.9203675,
        size.width * 0.7183681,
        size.height * 0.9206093);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class TicketPathRight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.moveTo(size.width * 0.9459107, 0);
    p.lineTo(size.width * 0.7507374, 0);
    p.cubicTo(
        size.width * 0.7507374,
        size.height * 0.03860724,
        size.width * 0.7377897,
        size.height * 0.07084710,
        size.width * 0.7205516,
        size.height * 0.07858467);
    p.lineTo(size.width * 0.7244589, size.height * 0.08688644);
    p.lineTo(size.width * 0.7136181, size.height * 0.1100991);
    p.lineTo(size.width * 0.7244589, size.height * 0.1333118);
    p.lineTo(size.width * 0.7136181, size.height * 0.1565245);
    p.lineTo(size.width * 0.7244589, size.height * 0.1797372);
    p.lineTo(size.width * 0.7136181, size.height * 0.2029499);
    p.lineTo(size.width * 0.7244589, size.height * 0.2261627);
    p.lineTo(size.width * 0.7136181, size.height * 0.2493754);
    p.lineTo(size.width * 0.7244589, size.height * 0.2725881);
    p.lineTo(size.width * 0.7136181, size.height * 0.2958008);
    p.lineTo(size.width * 0.7244589, size.height * 0.3190135);
    p.lineTo(size.width * 0.7136181, size.height * 0.3422262);
    p.lineTo(size.width * 0.7244589, size.height * 0.3654389);
    p.lineTo(size.width * 0.7136181, size.height * 0.3886516);
    p.lineTo(size.width * 0.7244589, size.height * 0.4118643);
    p.lineTo(size.width * 0.7136181, size.height * 0.4350770);
    p.lineTo(size.width * 0.7244589, size.height * 0.4582897);
    p.lineTo(size.width * 0.7136181, size.height * 0.4815024);
    p.lineTo(size.width * 0.7244589, size.height * 0.5047151);
    p.lineTo(size.width * 0.7136181, size.height * 0.5279278);
    p.lineTo(size.width * 0.7244589, size.height * 0.5511405);
    p.lineTo(size.width * 0.7136181, size.height * 0.5743532);
    p.lineTo(size.width * 0.7244589, size.height * 0.5975659);
    p.lineTo(size.width * 0.7136181, size.height * 0.6207786);
    p.lineTo(size.width * 0.7244589, size.height * 0.6439913);
    p.lineTo(size.width * 0.7136181, size.height * 0.6672040);
    p.lineTo(size.width * 0.7244589, size.height * 0.6904167);
    p.lineTo(size.width * 0.7136181, size.height * 0.7136294);
    p.lineTo(size.width * 0.7244589, size.height * 0.7368421);
    p.lineTo(size.width * 0.7136181, size.height * 0.7600548);
    p.lineTo(size.width * 0.7244589, size.height * 0.7832675);
    p.lineTo(size.width * 0.7136181, size.height * 0.8064802);
    p.lineTo(size.width * 0.7244589, size.height * 0.8296929);
    p.lineTo(size.width * 0.7136181, size.height * 0.8529056);
    p.lineTo(size.width * 0.7244589, size.height * 0.8761183);
    p.lineTo(size.width * 0.7136181, size.height * 0.8993310);
    p.lineTo(size.width * 0.7244589, size.height * 0.9225437);
    p.lineTo(size.width * 0.7239226, size.height * 0.9236721);
    p.cubicTo(
        size.width * 0.7394369,
        size.height * 0.9339083,
        size.width * 0.7507374,
        size.height * 0.9643749,
        size.width * 0.7507374,
        size.height * 1.000403);
    p.lineTo(size.width * 0.9459107, size.height * 1.000403);
    p.cubicTo(
        size.width * 0.9757901,
        size.height * 1.000403,
        size.width * 1.000038,
        size.height * 0.9494640,
        size.width * 1.000038,
        size.height * 0.8865157);
    p.lineTo(size.width * 1.000038, size.height * 0.1138873);
    p.cubicTo(size.width, size.height * 0.05093899, size.width * 0.9757901, 0,
        size.width * 0.9459107, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
