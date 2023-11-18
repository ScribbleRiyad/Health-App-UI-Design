import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';

// ignore: must_be_immutable
class TimeslotsItemWidget extends StatelessWidget {
  const TimeslotsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "09:00 AM",
        style: TextStyle(
          color: theme.colorScheme.onPrimary,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.cyan300,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.teal50,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
