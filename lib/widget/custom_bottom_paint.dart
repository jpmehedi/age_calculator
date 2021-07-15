import 'package:age_calculator/constant/color.dart';
import 'package:flutter/material.dart';

class CustomBottomPaint extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
    Path path_0 = Path();
        path_0.moveTo(size.width*0.5513889,size.height*0.4475806);
        path_0.cubicTo(size.width*0.2361111,size.height*0.4475806,size.width*0.05277778,size.height*0.7701613,size.width*0.001388889,size.height*0.9979839);
        path_0.lineTo(size.width*0.9986111,size.height*0.9979839);
        path_0.lineTo(size.width*0.9986111,size.height*0.002016129);
        path_0.cubicTo(size.width*0.9814806,size.height*0.1586020,size.width*0.8764361,size.height*0.4475806,size.width*0.5513889,size.height*0.4475806);
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

