import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/common/constants/colors.dart';
import 'package:pet_club/modules/cart/cart_controller.dart';
import 'package:pet_club/routes/routes.dart';

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
        currentIndex: 2,
        backgroundColor: ColorConstants.primary,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF327030),
            icon: Badge(
              label: Text('11'),
              child: Icon(Icons.home_outlined),
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'EXPLORE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_rounded),
            label: 'MANAGE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'PROFILE',
          ),
        ],
      ),
    );
  }
}
