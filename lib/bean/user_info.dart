/*
 * <p>------------------------------------------------------
 * <p>Copyright (C) 2020 wasu company, All rights reserved.
 * <p>------------------------------------------------------
 * <p> 用户信息实体类
 * <p>
 * @author Created by chenchen
 * @date  on 2020/7/30
 */
class UserInfo {
  /* 用户昵称 */
  String _nickName;
  /* 密码 */
  String _password;
  /* 用户名 */
  String _userName;
  /* 手机号 */
  String _phone;
  /* 验证码 */
  String _verCode;
  /* 邮箱地址 */
  String _email;
  /* 用户头像地址 */
  String _avatarUrl;
  /* 用户唯一标识 */
  String _uid;
  /* 原始密码 */
  String _oldPassword;

  String get nickName => _nickName;

  set nickName(String value) {
    _nickName = value;
  }

  String get password => _password;

  String get avatarUrl => _avatarUrl;

  set avatarUrl(String value) {
    _avatarUrl = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get verCode => _verCode;

  set verCode(String value) {
    _verCode = value;
  }

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }

  set password(String value) {
    _password = value;
  }

  String get uid => _uid;

  set uid(String value) {
    _uid = value;
  }

  String get oldPassword => _oldPassword;

  set oldPassword(String value) {
    _oldPassword = value;
  }

  Map toJson() {
    Map map = new Map();
    if(this._nickName != null) {
      map["nickName"] = this._nickName;
    }
    if(this._password != null) {
      map["password"] = this._password;
    }
    if(this._userName != null) {
      map["userName"] = this._userName;
    }
    if(this._phone != null) {
      map["phone"] = this._phone;
    }
    if(this._verCode != null) {
      map["verCode"] = this._verCode;
    }
    if(this._email != null) {
      map["email"] = this._email;
    }
    if(this._avatarUrl != null) {
      map["avatarUrl"] = this._avatarUrl;
    }
    if(this._uid != null) {
      map["uid"] = this._uid;
    }
    if(this._oldPassword != null) {
      map["oldPassword"] = this._oldPassword;
    }
    return map;
  }

}