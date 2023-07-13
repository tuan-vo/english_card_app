import 'package:english_card_app/values/app_colors.dart';
import 'package:flutter/material.dart';

import '../values/app_assets.dart';
import '../values/app_style.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  double sliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        elevation: 0,
        title: Text(
          'Your Control',
          style:
              AppStyles.h3.copyWith(color: AppColors.textColor, fontSize: 36),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(AppAssets.leftArrow),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'How much a number word at once?',
              style: AppStyles.h4
                  .copyWith(color: AppColors.greyText, fontSize: 18),
            ),
            Text(
              '${sliderValue.toInt()}',
              style: AppStyles.h1
                  .copyWith(color: AppColors.greyText, fontSize: 150),
            ),
            Slider(
              value: sliderValue,
              min: 5,
              max: 100,
              divisions: 95,
              activeColor: AppColors.primaryColor,
              inactiveColor: AppColors.primaryColor,
              onChanged: (value) {
                print(value);
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'slide to set',
                style: AppStyles.h5.copyWith(color: AppColors.textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
