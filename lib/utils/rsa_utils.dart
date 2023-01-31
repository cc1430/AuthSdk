import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

/*
 * <p>------------------------------------------------------
 * <p>Copyright (C) 2020 wasu company, All rights reserved.
 * <p>------------------------------------------------------
 * <p> RSA加解密工具类
 * <p>
 * @author Created by chenchen
 * @date  on 2020/8/5
 */
class RSAUtils {

  ///公钥密钥
  static const String PUBLIC_KEY =
      "-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCZWls1vhVCRqI8JcTdclOES4GQaHFnq51bQqqqnZrp3kXS8cmMOtCNkL9zMiM/0nTZcD7NWyqiuVZWG4SEiwyy0x1ywVWh0QSGsmAEknThxYx19TWeGks5s/BIoApnf2nNq7NgZIlLFRSAia/UtOUvoPsu5otBeRTu+1KC5Y80lwIDAQAB\n-----END PUBLIC KEY-----";

  /*
   * RSA公钥加密
   *
   * @param str 加密字符串
   * @return 密文
   */
  static String encrypt(String text) {
    RSAPublicKey publicKey = RSAKeyParser().parse(PUBLIC_KEY);
    var encrypter = Encrypter(RSA(publicKey: publicKey));
    var encrypted = encrypter.encrypt(text);
    return encrypted.base64;
  }
}
