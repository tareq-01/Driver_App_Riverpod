import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/model/shift_details_model.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/app/pages/shift_details/widgets/details_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class DriverDetailsWidget extends StatelessWidget {
  DriverDetailsWidget({
    super.key,
    required this.width,
    required this.shiftDetailsModel,
  });
  ShiftDetailsModel shiftDetailsModel = ShiftDetailsModel();

  final double width;
  String _formatDate(String dateTimeString) {
    final dateTime = DateTime.parse(dateTimeString).toLocal();
    final dateFormat = DateFormat('dd MMM. yyyy');
    return dateFormat.format(dateTime);
  }

  String _formatTimeRange(String startTime, String endTime) {
    final start = DateTime.parse(startTime).toLocal();
    final end = DateTime.parse(endTime).toLocal();
    final timeFormat = DateFormat('HH:mm');
    return '${timeFormat.format(start)} - ${timeFormat.format(end)}';
  }

  String coDrivers(List<ShiftDriverList> shiftDriverList) {
    List<String> coDriverList = [];
    for (int i = 0; i < shiftDriverList.length; i++) {
      if (!shiftDetailsModel.data!.shiftDriverList![i].isMain!) {
        coDriverList.add(shiftDriverList[i].name.toString());
      }
    }

    return coDriverList.join();
  }

  String vehiclesAndLicenses(List<ShiftVehicleList> shiftVehiclesList) {
    List<String> vehicleList = [];
    for (int i = 0; i < shiftVehiclesList.length; i++) {
      vehicleList.add(
        "${shiftVehiclesList[i].name.toString()}, ${shiftVehiclesList[i].licensePlate.toString()}",
      );
    }
    return vehicleList.join(" No Information");
  }

  @override
  Widget build(BuildContext context) {
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
                  shiftDetailsModel.data!.id.toString(),
                  style: AppStyles().subTitle600ColorTextStyle(
                    AppColors.subTitle600Color,
                  ),
                ),
                Text(
                  shiftDetailsModel.data?.status?.toString() ?? '',
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
                  subtitle:
                      "${_formatDate(shiftDetailsModel.data!.scheduledStart.toString())},"
                      " ${_formatTimeRange(shiftDetailsModel.data!.scheduledStart.toString(), shiftDetailsModel.data!.scheduledEnd.toString())}",
                ),
                SizedBox(height: 12),
                DetailsWidget(
                  title: "Address",
                  subtitle: shiftDetailsModel.data?.startAddress?.address ?? "",
                ),

                SizedBox(height: 12),
                if (shiftDetailsModel.data!.shiftDriverList!
                    .where((driver) => !driver.isMain!)
                    .toList()
                    .isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: DetailsWidget(
                      title: "Co-drivers",
                      subtitle: coDrivers(
                        shiftDetailsModel.data!.shiftDriverList!,
                      ),
                    ),
                  ),

                DetailsWidget(
                  title: "Car & License",
                  subtitle: vehiclesAndLicenses(
                    shiftDetailsModel.data!.shiftVehicleList!,
                  ),
                ),
                SizedBox(height: 12),
                if (shiftDetailsModel.data!.shiftInstruction != null &&
                    (shiftDetailsModel.data!.shiftInstruction!).isNotEmpty)
                  DetailsWidget(
                    title: "Instruction",
                    subtitle:
                        shiftDetailsModel.data?.shiftInstruction?.toString() ??
                        "No instructions",
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
