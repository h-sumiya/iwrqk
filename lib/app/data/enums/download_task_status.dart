enum DownloadTaskStatus {
  undefined,
  enqueued,
  running,
  complete,
  failed,
  canceled,
  paused;

  static DownloadTaskStatus fromInt(int value) {
    if (value < 0 || value >= DownloadTaskStatus.values.length) {
      return DownloadTaskStatus.undefined;
    }
    return DownloadTaskStatus.values[value];
  }
}
