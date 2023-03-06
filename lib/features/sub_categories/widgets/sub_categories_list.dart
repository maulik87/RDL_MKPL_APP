import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/config/debug.dart';
import 'package:rdl_market_place_app/features/home/datamodel/category_data.dart';
import 'package:rdl_market_place_app/features/sub_categories/controllers/sub_categories_controller.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';
import 'package:rdl_market_place_app/widgets/custom/custom_expansion_tile.dart' as Custom;

class SubCategoriesList extends StatelessWidget {
  SubCategoriesList({super.key});

  final SubCategoriesController _subCategoriesController = Get.find<SubCategoriesController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _subCategoriesController.category.children?.length,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width_15,
        vertical: AppSizes.height_15,
      ),
      itemBuilder: (BuildContext context, int index) {
        return SubCategoryItem(_subCategoriesController.category.children![index],context);
      },
    );
  }

  _buildSubCategoriesListItem() {
    return Column(
      children: [
        Theme(
          data:
              Theme.of(Get.context!).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: AppText(
              text: "name of categories",
              fontSize: AppFontSize.size_13,
            ),
            children: List.generate(
              10,
              (index) => ListTile(
                title: AppText(
                  text: 'description',
                  fontSize: AppSizes.height_12,
                ),
              ),
            ),
          ),
        ),
        Container(
          color: AppColor.txtGrey,
          height: AppSizes.height_0_8,
        ),
      ],
    );
  }

}

class SubCategoryItem extends StatefulWidget {
  SubCategoryItem(this.category, this.context);

  final Category category;
  final BuildContext context;

  @override
  _SubCategoryItemState createState() => _SubCategoryItemState();
}

class _SubCategoryItemState extends State<SubCategoryItem> {
  var level = 1;

  Widget _buildTiles(Category root) {

    if (root.children == null || root.children!.isEmpty) {
      return ListTile(
        onTap: () {
          ///widget.drawerItemClickListener
          ///    .onDrawerItemClick(root.url!, root.name!, widget.menu);
          ///Navigator.pop(context);
        },
        title: AppText(
          text: root.name??"",
          fontSize: AppFontSize.size_13,
        ),
        //trailing: Icon(Icons.chevron_right_rounded,size: 25,color:(root.isSelected)?HexColor.fromHex(widget.menuDe!.textColorHover):HexColor.fromHex(widget.menuDe!.textColor)  ,),
      );
    }
    level += 1;
    return Custom.ExpansionTile(
      onExpansionChanged: (value) {
        setState(() {
          root.isExpanded = value;
          Debug.logE("isExpanded" + value.toString());
        });
      },
      headerBackgroundColor: Colors.transparent,
      key: PageStorageKey<Category>(root),
      title: InkWell(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: AppText(
            text: root.name??"",
            fontSize: AppFontSize.size_13,
          ),
        ),
      ),
      initiallyExpanded: false,
      children: root.children!.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    level = 1;
    return _buildTiles(widget.category);
  }
}
