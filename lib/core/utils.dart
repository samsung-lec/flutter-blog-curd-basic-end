import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final dio = Dio(
  BaseOptions(
    baseUrl: "http://10.0.0.171:8080", // 서버 IP:PORT 입력
    contentType: "application/json; charset=utf-8",
  ),
);