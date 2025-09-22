import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/model/shift_details_model.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/common/widgets/details_widget.dart';
import 'package:flutter/material.dart';

class DriverDetailsWidget extends StatelessWidget {
   DriverDetailsWidget({super.key, required this.width,required this.startAddress});
    StartAddress startAddress = StartAddress();

  final double width;

  @override
  Widget build(BuildContext context) {
    StartAddress startAddress = StartAddress();
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  //"SH386015",
                  startAddress.id.toString(),
                  style: AppStyles().subTitle600ColorTextStyle(
                    AppColors.subTitle600Color,
                  ),
                ),
                Text(
                  "Completed",
                  style: AppStyles().regular12TextStyle(AppColors.grey700Color),
                ),
              ],
            ),
            SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailsWidget(
                  title: "Schedule",
                  subtitle: "03 mar.2023,08:00 - 17:00",
                ),
                SizedBox(height: 12),
                DetailsWidget(
                  title: "Address",
                  subtitle: "Algade 56,2.sal,4000 Roskilde | 17th",
                ),

                SizedBox(height: 12),
                DetailsWidget(
                  title: "Co-drivers",
                  subtitle: "Emon Chakladar,Shohag Siraji",
                ),

                SizedBox(height: 12),
                DetailsWidget(
                  title: "Car & License",
                  subtitle: "Toyota,AA 99 999",
                ),
                SizedBox(height: 12),
                DetailsWidget(
                  title: "Instruction",
                  subtitle:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
