// import 'dart:convert';

import 'package:flutter/services.dart';
// import 'package:package_info_plus/package_info_plus.dart';
import 'package:yaml/yaml.dart';
// import 'package:zendesk_messaging/zendesk_messaging.dart';

class EnvironmentData {
  String zendeskAndroidChannelKey = '';
  String zendeskIosChannelKey = '';

  Future<void> getConfigs() async {
    // final packageInfo = await PackageInfo.fromPlatform(); // TODO

    // final initConfigs = jsonDecode(await rootBundle
    //     .loadString('assets/configs/init_configs.json')); // TODO

    final zendeskConfig =
        loadYaml(await rootBundle.loadString('assets/configs/zendesk.yaml'));

    zendeskAndroidChannelKey =
        zendeskConfig['zendeskAndroidChannelKey'].toString();
    zendeskIosChannelKey = zendeskConfig['zendeskIosChannelKey'].toString();

    // await ZendeskMessaging.initialize(
    //   androidChannelKey: zendeskAndroidChannelKey,
    //   iosChannelKey: zendeskIosChannelKey,
    // );
  }
}
