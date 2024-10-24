import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setstate_limit_sample/item_tag.dart';
import 'package:setstate_limit_sample/product_controller.dart';

class DefaultWidgetTree extends StatelessWidget {
  const DefaultWidgetTree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('DefaultWidgetTree build!');
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(8),
            height: 200,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: SingleChildScrollView(
              child: GetBuilder<ProductController>(
                builder: (controller) {
                  return Wrap(
                    children: List.generate(
                      controller.leftProducts.length,
                      (index) => Container(
                          margin: const EdgeInsets.all(3),
                          child: ItemTag(
                            tag: controller.leftProducts.toList()[index],
                            removeItemTag: (String item) {},
                          )),
                    ),
                  );
                },
              ),
            ),
          )),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 200,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: SingleChildScrollView(
                child: GetBuilder<ProductController>(
                  builder: (controller) {
                    return Wrap(
                      children: List.generate(
                        controller.rightProducts.length,
                        (index) => Container(
                            margin: const EdgeInsets.all(3),
                            child: ItemTag(
                              tag: controller.rightProducts.toList()[index],
                              removeItemTag: (String item) {},
                            )),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
