import 'package:flutter/material.dart';
import 'package:wikimsglow/core/theme/my_colors.dart';
import 'package:wikimsglow/core/widgets/card/product_tile_square.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// We are putting this here just for the sake of simplicity, and this is
    /// just for mockup..
    /// You shouldn't use or write any logic or keep your data here,
    /// this is bad for your app if you fetch or put any data here
    List<Widget> _favouriteItem = [
      ProductTileSquare(
        title: 'Long Sleeve Shirt',
        price: 165,
        imageLink: 'https://i.imgur.com/sjDVeNV.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {},
      ),
      ProductTileSquare(
        title: 'Casual Henley Shirts',
        price: 175,
        imageLink: 'https://i.imgur.com/PFBRThN.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {},
      ),
      ProductTileSquare(
        title: 'Curved Hum Shirts',
        price: 100,
        imageLink: 'https://i.imgur.com/8dNDjHk.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {},
      ),
      ProductTileSquare(
        title: 'Casual Nolin',
        price: 100,
        imageLink: 'https://i.imgur.com/1phVInw.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {},
      ),
      ProductTileSquare(
        title: 'Casual Hem Shirts',
        price: 150,
        imageLink: 'https://i.imgur.com/QVroKWd.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {},
      ),
      ProductTileSquare(
        title: 'Casual Nolin',
        price: 150,
        imageLink: 'https://i.imgur.com/y8oqJX3.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {},
      ),
    ];

    return Column(
      children: [
        AppBar(
          title: Text('Favourite', style: TextStyle(color: MyColors.textBlack)),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: _favouriteItem.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 290,
            ),
            itemBuilder: (context, index) {
              return _favouriteItem[index];
            },
          ),
        )
      ],
    );
  }
}
