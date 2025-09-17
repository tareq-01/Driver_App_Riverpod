import 'package:driver_app/app/pages/shift_planner_page.dart';
import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/common/widgets/details_widget.dart';
import 'package:driver_app/common/widgets/shift_details_overview.dart';
import 'package:driver_app/common/widgets/shift_details_time_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShiftDetailsPage extends StatefulWidget {
  const ShiftDetailsPage({super.key});

  @override
  State<ShiftDetailsPage> createState() => _ShiftDetailsPageState();
}

class _ShiftDetailsPageState extends State<ShiftDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.bodyColor,

        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShiftPlannerPage()),
              );
            },
            child: SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset(
                "assets/svg_icon/Group.svg",

                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  AppColors.arrowButton500Color,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),

        title: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Details",
            style: AppStyles().appBarTitle500TextStyle(
              AppColors.arrowButton500Color,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  width: width,
                  //height: 108,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shift Time Summary",
                          style: AppStyles().subTitle600ColorTextStyle(
                            AppColors.subTitle600Color,
                          ),
                        ),
                        SizedBox(height: 8),
                        ShiftDetailsTimeSummaryWidget(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
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
                              "SH386015",
                              style: AppStyles().subTitle600ColorTextStyle(
                                AppColors.subTitle600Color,
                              ),
                            ),
                            Text(
                              "Completed",
                              style: AppStyles().regular12TextStyle(
                                AppColors.grey700Color,
                              ),
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
                ),
                SizedBox(height: 12),
                Container(
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
                        Text(
                          "Overview",
                          style: AppStyles().subTitle600ColorTextStyle(
                            AppColors.subTitle600Color,
                          ),
                        ),
                        SizedBox(height: 8),
                        ShiftDetailsOverview(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
