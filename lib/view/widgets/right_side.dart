import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_setting/view/widgets/tab_widget_section.dart';

import '../../controller/setting_controller.dart';
import '../../core/constants.dart';

class RightSection extends GetView<SettingController> {
  const RightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingController());
    return Expanded(
      child: Container(
        height: Get.height,
        decoration: BoxDecoration(
          color: Constants.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontSize: 20, color: Constants.black),
              ),
              DefaultTabController(
                length: 10, // Number of tabs
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Constants.black, // Set tab label color
                      tabs: [
                        Tab(text: 'General'),
                        Tab(text: 'Labels'),
                        Tab(text: 'Inbox'),
                        Tab(text: 'Accounts and Import'),
                        Tab(text: 'Filters and Blocked Addresses'),
                        Tab(text: 'Forwarding and POP/IMAP'),
                        Tab(text: 'Add-ons'),
                        Tab(text: 'Chat and Meet'),
                        Tab(text: 'Advanced'),
                        Tab(text: 'Office'),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .8,
                      child: TabBarView(
                        children: [
                          // Widgets for each tab's content go here
                          // Replace these with your actual content widgets
                          GeneralTab(controller: controller),
                          const Center(
                            child: Text('Labels Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Inbox Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Accounts and Import Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text(
                                'Filters and Blocked Addresses Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Forwarding and POP/IMAP Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Add-ons Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Chat and Meet Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Advanced Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                          const Center(
                            child: Text('Office Tab Content',
                                style: TextStyle(color: Constants.black)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
