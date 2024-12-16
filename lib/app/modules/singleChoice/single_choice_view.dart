import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_checkmark_button/app/modules/widgets/checkmark_button.dart';

import 'single_choice_controller.dart';

class SingleChoiceView extends GetView<SingleChoiceController> {
  const SingleChoiceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Choice'),
        centerTitle: true,
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GetBuilder<SingleChoiceController>(
                          builder: (controlller) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _makeChildren(),
                            );
                          }
                        ),
        )
      ),
    );
  }

    List<Widget> _makeChildren() {
    List<Widget> children = [];
    for (int i = 0; i < controller.authors.length; i++) {
      children.add(CheckmarkButton(
          checked: controller.checkedIndex == i, 
          onPressed: controller.checkmarkButtonTapped,
          index: i,
          child: Row(
               children:  [
                Icon(Icons.man),
                SizedBox(width: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(controller.authors[i].name, style: TextStyle(fontSize: 20),),
                    Text(controller.authors[i].description, style: TextStyle(fontStyle: FontStyle.italic),),
                    ],
                )
               ],
          ),));
      children.add(SizedBox(
        height: 15,
      ));
    }
    return children;
  }
}
