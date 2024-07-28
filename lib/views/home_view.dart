import 'package:flutter/material.dart';
import '../widgets/newsListViewBuilder.dart';
import '../widgets/widgets_list_view.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: WidgetListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            // sliver list  مش هيعترض عشان هي عباره عن
             const NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}
       //Column(children: [
       //   ListViewHorizantal(),
       //   const SizedBox(height: 32,),
      //   Expanded(child: listview_newlist()),
      // ],)

