

abstract class ResultListener {
  void onSuccess(String data);
  void onFail(String msg);
  void onError(String error);
}