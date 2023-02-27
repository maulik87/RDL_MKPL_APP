import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class FreshRecommendationsList extends StatelessWidget {
  const FreshRecommendationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizes.height_30),
        Container(
          margin: EdgeInsets.symmetric(horizontal: AppSizes.width_15),
          alignment: Alignment.centerLeft,
          child: AppText(
            text: 'Brows Categories',
            fontSize: AppFontSize.size_13,
          ),
        ),
        GridView.builder(
          itemCount: 20,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.width_10,
            vertical: AppSizes.height_12,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              alignment: Alignment.topRight,
              children: [
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=960',
                            fit: BoxFit.cover,
                            width: AppSizes.fullWidth,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: AppSizes.width_8,
                          vertical: AppSizes.height_5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text: '₹ 50,00,000,0000',
                              maxLine: 1,
                              fontSize: AppFontSize.size_13,
                              fontWeight: FontWeight.w500,
                            ),
                            AppText(
                              text:
                                  'Ferrari S.p.A. is an Italian luxury sports car manufacturer based in Maranello, Italy.',
                              maxLine: 1,
                              fontSize: AppFontSize.size_10,
                              fontWeight: FontWeight.w400,
                            ),
                            AppText(
                              text: '2015 - 10,000 km',
                              maxLine: 1,
                              fontSize: AppFontSize.size_10,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: AppSizes.height_10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: AppSizes.height_15,
                                ),
                                SizedBox(width: AppSizes.width_3),
                                AppText(
                                  text: 'Varacha, Gujarat',
                                  fontSize: AppFontSize.size_9,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: AppSizes.height_25,
                  width: AppSizes.height_25,
                  margin: EdgeInsets.all(AppSizes.height_12),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.white,
                  ),
                  child: Icon(
                    // Icons.favorite_outline,
                    Icons.favorite,
                    // color: AppColor.black,
                    color: AppColor.red,
                    size: AppSizes.height_20,
                  ),
                ),
              ],
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: AppSizes.width_5,
            mainAxisSpacing: AppSizes.height_5,
            mainAxisExtent: AppSizes.height_10 * 25,
          ),
        ),
      ],
    );
  }
}
