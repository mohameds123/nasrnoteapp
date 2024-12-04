import 'package:flutter/material.dart';

import '../../core/utils/colors.dart';

class NoteWidget extends StatelessWidget {
   NoteWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorsManager.lightPurple,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Text(
              "Meeting",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    "Meeting in amit",
                    style: TextStyle(
                      fontSize: 12,
                      color: ColorsManager.lightGrey,

                    ),

                  ),
                ),
                Spacer(),
                Text(
                 "3:00 pm" ,
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorsManager.lightGrey,

                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
