import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_bottom_button.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_body.dart';
import 'package:team_project/ui/pages/product/detail_page/post_detail_view_model.dart';

class ProductDetailPage extends ConsumerWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Logger().d("디테일 화면으로 넘어왔어요 !");
    int? clickedProductDetailId = ref.read(paramProvider).productDetailId;
    return Scaffold(
      body: DetailProductBody(),
      bottomNavigationBar: DetailBottomButton(),
    );
  }
}
