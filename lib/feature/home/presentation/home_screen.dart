import 'package:flutter/material.dart';
import 'package:pet_shop/core/theme/app_color.dart';
import 'package:pet_shop/feature/home/presentation/widget/carousel_widget.dart';
import 'package:pet_shop/feature/home/presentation/widget/category_widget.dart';
import 'package:pet_shop/feature/home/presentation/widget/pets_widget.dart';
import 'package:pet_shop/feature/home/presentation/widget/popular_product_widget.dart';
import 'package:pet_shop/feature/home/presentation/widget/promotion_widget.dart';
import 'package:pet_shop/feature/home/presentation/widget/shop_widget.dart';

class HomeScrenn extends StatelessWidget {
  const HomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text("PetShop"),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(56),
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    Expanded(
                      child: Text("Search | pets, toy, etc."),
                    )
                  ],
                ),
              ),
            ),
          ),

          /// using this methode you can easyly change the widget order

          const SliverToBoxAdapter(
            child: CarouselWidget(),
          ),
          const SliverToBoxAdapter(
            child: PromotionWidget(),
          ),
          const SliverToBoxAdapter(
            child: PetsWidget(),
          ),
          const SliverToBoxAdapter(
            child: CategoryWidget(),
          ),
          const SliverToBoxAdapter(
            child: PopularProductWidget(),
          ),
          const SliverToBoxAdapter(
            child: ShopWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 80),
          ),
        ],
      ),
    );
  }
}
