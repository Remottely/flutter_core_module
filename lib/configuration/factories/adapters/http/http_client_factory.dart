import 'package:http/http.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

IHttpClient httpAdapterFactory() => HttpAdapter(Client());
