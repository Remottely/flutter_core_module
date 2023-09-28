import 'package:zendesk_messaging/zendesk_messaging.dart';

Future<void> zendeskMessagingInitFactory({
  required String androidChannelKey,
  required String iosChannelKey,
}) =>
    ZendeskMessaging.initialize(
        androidChannelKey: androidChannelKey, iosChannelKey: iosChannelKey);
