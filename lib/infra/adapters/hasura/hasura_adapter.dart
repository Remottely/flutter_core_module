import 'dart:developer';

import 'package:hasura_connect/hasura_connect.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class HasuraAdapter implements IHasuraClient {
  final HasuraConnect hasuraClient;

  HasuraAdapter({required this.hasuraClient});

  @override
  Future<Map<String, dynamic>> query({required String document}) async {
    try {
      final dynamic query = await hasuraClient.query(document);

      log('[HASURA_SUCCESS]$query'); // TODO
      return query['data'] as Map<String, dynamic>;
    } catch (error) {
      log('[HASURA_FAILED_QUERY]$error'); // TODO
      throw DomainErrorType
          .unexpected; // TODO RETURN DomainErrorType based on HasuraConnect Error feedback
    }
  }

  @override
  Future<Map<String, dynamic>> mutation({required String document}) async {
    try {
      final dynamic mutation = await hasuraClient.mutation(document);

      log('[HASURA_SUCCESS]$mutation'); // TODO
      return mutation['data'] as Map<String, dynamic>;
    } catch (e) {
      log('[HASURA_FAILED_QUERY]$e'); // TODO
      throw DomainErrorType
          .unexpected; // TODO RETURN DomainErrorType based on HasuraConnect Error feedback
    }
  }

  @override
  Future<Snapshot<dynamic>> subscription({required String document}) async {
    return await hasuraClient.subscription(document);
  }
}
