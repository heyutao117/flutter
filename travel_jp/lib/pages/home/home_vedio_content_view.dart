import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

import '../../model/home_data_video_model_entity.dart';

class HYVideoContentView extends StatefulWidget {
  String vid;
  HYHomeDataVideoModelEntity homeDataVideoModelEntity;
  HYVideoContentView(
      {Key? key, required this.vid, required this.homeDataVideoModelEntity})
      : super(key: key);

  @override
  State<HYVideoContentView> createState() => _HYVideoContentViewState();
}

class _HYVideoContentViewState extends State<HYVideoContentView> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'http://newshipin.qn.youyizhidao.com/yy_ribenlvyou_${widget.vid}.mp4');
    // _controller.addListener(() {});
    // _controller.initialize().then((value) {});
    // _chewieController = ChewieController(
    //     videoPlayerController: _controller, autoPlay: true, looping: false);
  }

  @override
  void didChangeDependencies() {
    _controller = VideoPlayerController.network(
        'http://newshipin.qn.youyizhidao.com/yy_ribenlvyou_${widget.vid}.mp4');
    _controller.addListener(() {});
    _controller.initialize().then((value) {});
    _chewieController = ChewieController(
        videoPlayerController: _controller, autoPlay: true, looping: false);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: ScreenUtil().screenWidth - 30,
          child: AspectRatio(
              aspectRatio: 2,
              child: _controller.value.isInitialized
                  ? Chewie(
                      controller: _chewieController,
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    )),
        ),
      ),
      Container(
          padding: const EdgeInsets.only(left: 12),
          alignment: Alignment.centerLeft,
          child: const Text(
            "节目列表",
            style: TextStyle(fontSize: 20),
          )),
      Expanded(
        child: ListView.builder(
            // shrinkWrap: true,
            itemCount: widget.homeDataVideoModelEntity.vlist.length,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return getCardWidget(
                  widget.homeDataVideoModelEntity.vlist[index], context);
            }),
      ),
    ]);
  }

  Widget getCardWidget(HomeDataVideoModelVlist vlist, BuildContext context) {
    return Container(
      color:
          widget.vid == vlist.videoId.toString() ? Colors.grey : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  String vid = vlist.videoId.toString();
                  widget.vid = vid.substring(vid.length - 3);
                  setState(() {
                    widget.vid = vid;
                  });
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    vlist.backImg,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/home/play.png",
                      height: 30,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(child: Text(vlist.title)),
          ],
        ),
      ),
    );
  }
}
