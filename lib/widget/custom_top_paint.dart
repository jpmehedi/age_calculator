
import 'package:age_calculator/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTopPaint extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
                
    Path path_0 = Path();
        path_0.moveTo(size.width*0.2879464,size.height*0.8120567);
        path_0.cubicTo(size.width*0.1790179,size.height*0.8716312,size.width*0.05133929,size.height*0.5886525,size.width*0.001116071,size.height*0.4397163);
        path_0.lineTo(size.width*0.001116071,size.height*0.003546099);
        path_0.lineTo(size.width*0.9988839,size.height*0.003546099);
        path_0.lineTo(size.width*0.9988839,size.height*0.9645390);
        path_0.cubicTo(size.width*0.9620536,size.height*1.009454,size.width*0.8466518,size.height*1.041844,size.width*0.6796875,size.height*0.8120567);
        path_0.cubicTo(size.width*0.4709821,size.height*0.5248227,size.width*0.4241071,size.height*0.7375887,size.width*0.2879464,size.height*0.8120567);
        path_0.close();

    // ignore: non_constant_identifier_names
    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = primaryColor.withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

    }

    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
        return true;
    }
}