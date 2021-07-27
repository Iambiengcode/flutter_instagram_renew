import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:whoru/src/themes/app_colors.dart';
import 'package:whoru/src/themes/theme_service.dart';
import 'package:whoru/src/utils/sizer/sizer.dart';

class BottomInputCommentInPost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomInputCommentInPostState();
}

class _BottomInputCommentInPostState extends State<BottomInputCommentInPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8.sp),
        Divider(
          height: .1,
          thickness: .1,
        ),
        SizedBox(height: 4.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 5.sp),
            Container(
              height: 28.sp,
              width: 28.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  width: 3.sp,
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/60530946?v=4',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 2.sp),
            Expanded(
              child: TextField(
                onTap: () {},
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color,
                  fontSize: 12.sp,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 6.sp,
                    bottom: 3.sp,
                    top: 3.sp,
                    right: 10.sp,
                  ),
                  hintText: 'Type a comment...',
                  hintStyle: TextStyle(
                    color:
                        Theme.of(context).textTheme.bodyText1.color.withOpacity(
                              ThemeService().isSavedDarkMode() ? .85 : .65,
                            ),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato',
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (mes) {},
              ),
            ),
            Icon(
              PhosphorIcons.smiley_wink_fill,
              color: colorPrimary,
              size: 20.sp,
            ),
            SizedBox(width: 10.sp),
            Icon(
              PhosphorIcons.telegram_logo_fill,
              color: colorPrimary,
              size: 20.sp,
            ),
            SizedBox(width: 8.sp),
          ],
        ),
      ],
    );
  }
}