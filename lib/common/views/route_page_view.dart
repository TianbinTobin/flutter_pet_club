import 'dart:async';

import 'package:flutter/material.dart';

import 'package:pet_club/common/widgets/widgets.dart';

class RoutePageView extends StatefulWidget {
  const RoutePageView({super.key, required this.child});

  final Widget child;

  @override
  State<StatefulWidget> createState() => RoutePageViewState();
}

class RoutePageViewState extends State<RoutePageView> {
  bool shouldPop = false;

  late final Timer timer;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // 禁止直接返回
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        if (didPop) return; // 如果已经返回，则不再处理
        if (shouldPop) {
          Navigator.of(context).pop(); // 真正退出
        } else {
          shouldPop = true;
          showToast('是否确认退出');
          timer = Timer(Duration(seconds: 2), () {
            shouldPop = false;
          });
        }
      },
      child: widget.child,
    );
  }
}
