import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/app_constants/resources_app.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations().welcomeContainerDecoration,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CircularProgressIndicator(
          color: Colors.white70,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text('Please, wait', style: AppTextStyle().pleaseWaitText)
      ]),
    );
  }
}
