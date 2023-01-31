/*
 * <p>------------------------------------------------------
 * <p>Copyright (C) 2020 wasu company, All rights reserved.
 * <p>------------------------------------------------------
 * <p> 网络请求宏定义
 * <p>
 * @author Created by chenchen
 * @date  on 2020/7/30
 */
class HttpConstant{

  /// Base url -------------------------------------------------------------
  /// 测试环境
  static const String BASE_URL_URS_AUTH_TEST = "http://125.210.163.116:6060/urs-auth";
  static const String BASE_URL_URS_OL_TEST = "http://125.210.163.113:8089/urs-ol";

  /// 正式环境
  static const String BASE_URL_URS_AUTH = BASE_URL_URS_AUTH_TEST;
  static const String BASE_URL_URS_OL = BASE_URL_URS_OL_TEST;

  /// Request path -------------------------------------------------------------

  /// urs-ol接口：新增用户
  static const String URS_OL_ADD_USER = "/user/addUser";
  static const String URS_OL_GET_BY_UID = "/user/getByUid";
  /// urs-ol接口：发送短信验证码
  static const String URS_OL_SEND_SMS_CODE = "/sms/sendSMSCode";
  static const String URS_OL_EDIT_USER = "/user/editUser";
  static const String URS_OL_BIND_STB_ID = "/user/bindStbId";

  /// oauth接口： 获取令牌
  static const String OAUTH_TOKEN = "/oauth/token";
  static const String OAUTH_CHECK_TOKEN = "/oauth/check_token";
  static const String OAUTH_SEND_LOGIN_SMS_CODE = "/sms/sendLoginSMSCode";
  static const String OAUTH_GEN_QR_CODE = "/qrcode/genQrcode";
  static const String OAUTH_CHECK_STATUS = "/qrcode/checkStatus";
  static const String OAUTH_SCAN_OPT = "/qrcode/scanOpt";

  /// Parameter def -------------------------------------------------------------
  static const String TOKEN_PREFIX = "Bearer ";
  static const String BUSI_TYPE_URS = "urs";
  static const String SEND_TYPE_PHONE = "phone";

  static const String GRANT_TYPE_CLIENT_CREDENTIALS = "client_credentials";
  static const String GRANT_TYPE_PASSWORD = "password";
  static const String GRANT_TYPE_SMS_CODE = "sms_code";
  static const String GRANT_TYPE_ONECLICK = "oneclick";
  static const String GRANT_TYPE_SCAN_CODE = "scan_code";
  static const String GRANT_TYPE_REFRESH_TOKEN = "refresh_token";
}