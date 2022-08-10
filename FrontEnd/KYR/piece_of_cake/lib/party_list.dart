import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:piece_of_cake/buy_detail.dart';
import 'package:piece_of_cake/models/kakao_login_model.dart';
import 'package:piece_of_cake/vo.dart';
import 'package:provider/provider.dart';
import './my.dart';
import './chat_list_my.dart';
import './pie_create.dart';
import './main.dart';
import './notice.dart';
import 'package:like_button/like_button.dart';

import 'models/party_model.dart';

class Item extends StatelessWidget {
  // const Item(Party wish, {Key? key}) : super(key: key);
  Party? _wish;
  Item(Party wish) {
    this._wish = wish;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      hoverColor: Colors.lightGreenAccent,
      highlightColor: Colors.amber,
      child: Container(
        height: 150,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.amber), borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Flexible(flex: 4, child:
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/harry.png',
                  fit: BoxFit.fill,
                ), // Text(key['title']),
              ),
            ),
            Flexible(flex: 6,child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${_wish?.partyTitle}',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),overflow: TextOverflow.ellipsis,),
                    Text('${_wish?.partyAddr}', style: TextStyle(fontSize: 15), overflow: TextOverflow.ellipsis,),
                    Text('${_wish?.partyContent}', style: TextStyle(fontSize: 18),overflow: TextOverflow.ellipsis,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LikeButton(),
                        Text('4'),
                      ]
                    )
                  ],
                )
              ),
            )
          ]
        )
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BuyDetail()),
        );
      }
    );




  }
}


class PartyList extends StatelessWidget {
  const PartyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('wish list');
    Provider.of<PartyModel>(context).fetchWishList(Provider.of<KakaoLoginModel>(context).userResVO?.userSeq);
    print(Provider.of<PartyModel>(context).wishList);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('PartyList'),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notice()),
                  );
                },
              ),
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: '파티검색',
                        prefixIcon: Icon(Icons.search),)
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              for (var wish in Provider.of<PartyModel>(context).wishList)
                Item(wish)
              // Item(),
              // Item(),
              // Item(),
              // Item(),
              // Item(),
            ]),
          ),
        ],
      ),
    );
  }
}