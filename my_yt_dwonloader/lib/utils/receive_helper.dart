import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_yt_dwonloader/pages/video_downloader.dart';
import 'package:my_yt_dwonloader/pages/playlist_downloader.dart';
import 'package:my_yt_dwonloader/utils/playlist_helper.dart';

import 'download_helper.dart';

void checkLinkisYoutube(String link) {
  if (link.contains("youtube") || link.contains("youtu.be")) {
    if (link.contains("playlist")) {
      if (link.trim() != "") {
        plylistUrlController.text = link;
        controller.loading.value = true;
        controller.newPlayList.clear();
        downloadPlaylist(link.trim());
        Get.to(() => const PlaylistPage());
      }
    } else {
      if (link.trim() != "") {
        videoUrlController.text = link;
        contr.loading.value = true;
        download(videoUrlController.text.trim());
        Get.to(() => const VideoPage());
      }
    }
  } else {
    debugPrint("It is not a youtube link");
  }
}
