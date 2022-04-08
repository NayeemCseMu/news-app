import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/constants/size.dart';
import 'package:news_app/module/dashboard/model/news_model.dart';

class NewsTiles extends StatelessWidget {
  const NewsTiles({
    Key? key,
    required this.element,
    required this.publishDate,
  }) : super(key: key);

  final Articles element;
  final String publishDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  element.urlToImage!,
                ),
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Chip(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  label: Text(
                    element.source!.name!,
                    style: Get.textTheme.caption!.copyWith(color: Colors.black),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                left: 10,
                child: Container(
                  // padding: const EdgeInsets.only(top: 8),
                  color: Colors.black.withOpacity(0.6),
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    element.title!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.heptaSlab(
                      textStyle: Get.textTheme.headline6!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          getVerticalSpace(20),
          Container(
            color: Colors.amber[50],
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  element.author!,
                  style: Get.textTheme.bodyText1,
                ),
                Text(
                  publishDate,
                  style: Get.textTheme.caption,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(element.content!,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Get.textTheme.bodyText2),
          ),
        ],
      ),
    );
  }
}
