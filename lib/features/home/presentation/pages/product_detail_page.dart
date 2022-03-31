import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/color_themes.dart';
import 'package:wikimsglow/features/home/domain/entities/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  final Product product;

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            product.image,
            height: _height,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: AppsConfig.defaultPadding * 1.5),
          Padding(
            padding: EdgeInsets.only(top: _height - 30),
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(
                    AppsConfig.defaultPadding,
                    AppsConfig.defaultPadding * 2,
                    AppsConfig.defaultPadding,
                    AppsConfig.defaultPadding),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppsConfig.defaultRadius * 3),
                    topRight: Radius.circular(AppsConfig.defaultRadius * 3),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: AppsConfig.defaultPadding),
                      child: Text(
                        "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
