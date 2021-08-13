import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:news_app/module/dashboard/controller/news_controller.dart';

class NewsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NewsController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: GetBuilder<NewsController>(
        init: NewsController(),
        builder: (controller) => LayoutBuilder(
          builder: (context, snapshot) {
            return controller.newsLoading.value
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemCount: controller.newsModel.value.articles!.length,
                    separatorBuilder: (ctx, _) => Divider(),
                    itemBuilder: (ctx, index) {
                      final element =
                          controller.newsModel.value.articles![index]!;
                      final dateParse = DateTime.parse(element.publishedAt!);
                      final publishDate = DateFormat.yMMMEd().format(dateParse);
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "#${index + 1} " + element.source!.name!,
                              style: Get.textTheme.subtitle2,
                            ),
                            ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                              minVerticalPadding: 10,
                              title: Text(
                                element.title!,
                                style: Get.textTheme.headline6,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                element.urlToImage!,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  element.author!,
                                  style: Get.textTheme.bodyText2,
                                ),
                                Text(
                                  publishDate,
                                  style: Get.textTheme.caption,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                element.content!,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
