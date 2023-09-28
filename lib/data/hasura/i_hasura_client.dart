import 'package:hasura_connect/hasura_connect.dart';

mixin IHasuraClient {
  Future<Map<String, dynamic>?> query({required String document});
  Future<Map<String, dynamic>?> mutation({required String document});
  Future<Snapshot<dynamic>> subscription({required String document});
}
