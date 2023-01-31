import 'dart:io';

import 'package:wasuauthsdk/constant/http_constant.dart';
import 'package:dio/dio.dart';

import '../auth/result_listener.dart';

/*
 * <p>------------------------------------------------------
 * <p>Copyright (C) 2020 wasu company, All rights reserved.
 * <p>------------------------------------------------------
 * <p> 网络请求工具类
 * <p>
 * @author Created by chenchen
 * @date  on 2020/7/30
 */
class DioUtils {
  static DioUtils dioUtils;
  Dio dio;
  BaseOptions options;

  /// default options
  static const int CONNECT_TIMEOUT = 5000;
  static const int RECEIVE_TIMEOUT = 5000;

  DioUtils() {
    // 全局属性：请求前缀、连接超时时间、响应超时时间
    options = BaseOptions(
      connectTimeout: CONNECT_TIMEOUT,
      receiveTimeout: RECEIVE_TIMEOUT,
      responseType: ResponseType.plain,
      contentType: ContentType.parse("application/x-www-form-urlencoded"),
      validateStatus: (status) {
        //不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
        return true;
      },
      baseUrl: HttpConstant.BASE_URL_URS_OL
    );
    dio = Dio(options);
  }

  static DioUtils getInstance() {
    if (dioUtils == null) {
      dioUtils = DioUtils();
    }
    return dioUtils;
  }

  void enableLogger({bool enable = false}) {
    dio.interceptors.add(LogInterceptor(request: enable, requestHeader: enable, requestBody: enable, responseHeader: enable, responseBody: enable));
  }

  Future<Response> get(String url, {Map headParam, Map bodyParam, ResultListener listener}) async {
    try {
      if(headParam == null) {
        dio.options.headers = Map();
      } else {
        dio.options.headers = headParam;
      }
      Response response = await dio.get(url, queryParameters: bodyParam);
      if (response.statusCode == 200) {
        if (listener != null) {
          listener.onSuccess(response.data);
        }
        return response;
      } else {
        if (listener != null) {
          listener.onFail(response.data);
        }
      }
    } catch (e) {
      if (listener != null) {
        listener.onError(e.toString());
      }
    }
    return null;
  }

  Future<Response> post(String url, {Map headParam, Map bodyParam, ResultListener listener}) async {
    try {
      if(headParam == null) {
        dio.options.headers = Map();
        dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
      } else {
        dio.options.headers = headParam;
      }
      Response response = await dio.post(url, queryParameters: bodyParam);
      if (response.statusCode == 200) {
        if (listener != null) {
          listener.onSuccess(response.data);
        }
        return response;
      } else {
        if (listener != null) {
          listener.onFail(response.data);
        }
      }
    } catch (e) {
      if (listener != null) {
        listener.onError(e.toString());
      }
    }
    return null;
  }

}
