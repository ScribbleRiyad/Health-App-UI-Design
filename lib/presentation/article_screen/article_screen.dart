import '../article_screen/widgets/ninetyfour_item_widget.dart';
import '../article_screen/widgets/topics_item_widget.dart';
import '../article_screen/widgets/trendings_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:heath_app/core/app_export.dart';
import 'package:heath_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:heath_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:heath_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:heath_app/widgets/app_bar/custom_app_bar.dart';
import 'package:heath_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ArticleScreen extends StatelessWidget {
  ArticleScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(children: [
                  CustomSearchView(
                      controller: searchController,
                      hintText: "msg_search_article".tr),
                  SizedBox(height: 23.v),
                  _buildPopularArticles(context),
                  SizedBox(height: 23.v),
                  _buildTrendingArticles(context),
                  SizedBox(height: 16.v),
                  _buildRelatedArticles(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_articles".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgOverflowMenu,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildPopularArticles(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_popular_articles".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer_1),
      SizedBox(height: 10.v),
      Wrap(
          runSpacing: 5.v,
          spacing: 5.h,
          children: List<Widget>.generate(3, (index) => TopicsItemWidget()))
    ]);
  }

  /// Section Widget
  Widget _buildTrendingArticles(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 2.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("msg_trending_articles".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer_1),
                Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Text("lbl_see_all".tr,
                        style: CustomTextStyles.labelLargeCyan300))
              ])),
      SizedBox(height: 11.v),
      SizedBox(
          height: 223.v,
          child: ListView.separated(
              padding: EdgeInsets.only(right: 12.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 17.h);
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return TrendingsItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildRelatedArticles(BuildContext context) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("msg_related_articles".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer_1),
                Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text("lbl_see_all".tr,
                        style: CustomTextStyles.labelLargeCyan300))
              ]),
              SizedBox(height: 12.v),
              Expanded(
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10.v);
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return NinetyfourItemWidget();
                      }))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
