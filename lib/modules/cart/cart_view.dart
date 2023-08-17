import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pet_club/routes/routes.dart';
import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/common/values/colors.dart';
import 'package:pet_club/modules/cart/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Assets.images.icons.arrowLeft.svg(),
          onPressed: () {
            Get.offAllNamed(AppRoutes.LOGIN);
          },
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        ),
        actions: [
          IconButton(
            icon: Assets.images.icons.shop.svg(),
            onPressed: () {},
            tooltip: '宠物商城',
          )
        ],
        title: Text('Cart', style: TextStyle(color: ColorConstants.white)),
        centerTitle: true,
        backgroundColor: ColorConstants.primary,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: ColorConstants.primary,
        items: [
          BottomNavigationBarItem(
            activeIcon: Assets.images.icons.nav.homeActive.svg(),
            icon: Assets.images.icons.nav.home.svg(),
            label: '首页',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.images.icons.nav.studyActive.svg(),
            icon: Assets.images.icons.nav.study.svg(),
            label: '学习',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.images.icons.nav.messageActive.svg(),
            icon: Badge(
              label: Text('11'),
              isLabelVisible: false,
              child: Assets.images.icons.nav.message.svg(),
            ),
            label: '消息',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.images.icons.nav.profileActive.svg(),
            icon: Assets.images.icons.nav.profile.svg(),
            label: '我的',
          ),
        ],
      ),
    );
  }
}
