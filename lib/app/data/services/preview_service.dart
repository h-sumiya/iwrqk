import 'package:get/get.dart';

class PreviewService extends GetxService {
  final RxnString _previewingMediaId = RxnString();

  String? get previewingMediaId => _previewingMediaId.value;

  bool isPreviewing(String mediaId) {
    return _previewingMediaId.value == mediaId;
  }

  void show(String mediaId) {
    _previewingMediaId.value = mediaId;
  }

  void clear() {
    _previewingMediaId.value = null;
  }
}
