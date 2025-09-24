import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({super.key, this.isChecked, required this.onChange});
  final bool? isChecked;
  final Function() onChange;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChange,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Checkbox(
              activeColor: AppColors.primaryColor,
              value: isChecked ?? false,

              onChanged: (b) {},
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              // visualDensity: VisualDensity(horizontal: -4),
            ),
          ),

          SizedBox(width: 8),
          Text(
            "Remember Me",
            style: AppStyles().regular12TextStyle(AppColors.grey700Color),
          ),
        ],
      ),
    );
  }
}
