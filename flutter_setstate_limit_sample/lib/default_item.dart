import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setstate_limit_sample/product_controller.dart';

class DefaultItem extends StatelessWidget {
  final String item;
  const DefaultItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Get.find<ProductController>().pushZone(true, item);
            },
            child: const Text('left'),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
            child: Text(
          item,
          textAlign: TextAlign.center,
        )),
        const SizedBox(width: 20),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Get.find<ProductController>().pushZone(false, item);
            },
            child: const Text('right'),
          ),
        )
      ]),
    );
  }
}
