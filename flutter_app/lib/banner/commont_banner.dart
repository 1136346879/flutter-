import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_app/ToastShow.dart' as ToastUtil;

class CommontBanner extends StatelessWidget {
  final List? swiperDataList;

  CommontBanner({Key? key, this.swiperDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network("${swiperDataList![index]['image']}",
              fit: BoxFit.fill);
        },
        onTap: (index) {
          ToastUtil.ToastShow().showBottomToast(swiperDataList![index]['title']);
        },
        itemCount: swiperDataList!.length,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
