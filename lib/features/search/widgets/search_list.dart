import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width_15,
        vertical: AppSizes.height_10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(bottom: AppSizes.height_5),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                      size: AppSizes.height_20,
                    ),
                    SizedBox(width: AppSizes.width_10),
                    Expanded(
                      child: AppText(
                        text: 'Search product name',
                        fontSize: AppFontSize.size_15,
                      ),
                    ),
                    SizedBox(width: AppSizes.width_10),
                  ],
                ),
                const Divider(color: AppColor.txtGrey)
              ],
            ),
          ),
        );
      },
    );
  }
}
