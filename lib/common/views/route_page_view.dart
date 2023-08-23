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
    return WillPopScope(
      onWillPop: () async {
        if (Navigator.canPop(context)) {
          return true;
        }
        if (shouldPop) {
          return true;
        } else {
          shouldPop = true;
          showToast('是否确认退出');
          timer = Timer(Duration(seconds: 3), () {
            shouldPop = false;
          });
        }
        return false;
      },
      child: widget.child,
    );
  }
}
