import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: AppSizes.width_15),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              margin: EdgeInsets.only(bottom: AppSizes.height_12),
              child: SizedBox(
                height: AppSizes.height_28 * 5,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                      child: Image.network(
                        'https://images.pexels.com/photos/3786091/pexels-photo-3786091.jpeg?auto=compress&cs=tinysrgb&w=1600',
                        width: AppSizes.width_28 * 5,
                        height: AppSizes.height_28 * 5,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(AppSizes.height_8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text: '₹ 50,000',
                              fontSize: AppFontSize.size_16,
                              fontWeight: FontWeight.w600,
                              maxLine: 1,
                            ),
                            AppText(
                              text: 'Auto gair (Mustang) - Description',
                              fontSize: AppFontSize.size_12,
                              txtColor: AppColor.txtGrey,
                              fontWeight: FontWeight.w500,
                            ),
                            const Spacer(),
                            AppText(
                              text: '₹ 15,000 - 25,000 Month',
                              fontSize: AppFontSize.size_13,
                              txtColor: AppColor.txtGrey,
                              fontWeight: FontWeight.w500,
                              maxLine: 1,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Expanded(
                                  child: AppText(
                                    text: 'Maulik',
                                    fontSize: AppFontSize.size_14,
                                    fontWeight: FontWeight.w500,
                                    maxLine: 1,
                                  ),
                                ),
                                Expanded(
                                  child: AppText(
                                    text: '${DateTime.now()}',
                                    fontSize: AppFontSize.size_13,
                                    fontWeight: FontWeight.w500,
                                    maxLine: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
