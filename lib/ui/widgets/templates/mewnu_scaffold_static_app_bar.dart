import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuScaffoldStaticAppBar extends StatelessWidget {
  final String title;
  final String subTitle;
  final SliverList sliverList;
  final Widget? floatingActionButton;
  final ScrollController? controller;

  const MewnuScaffoldStaticAppBar({
    super.key,
    required this.title,
    required this.subTitle,
    required this.sliverList,
    this.floatingActionButton,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            backgroundColor: Colors.black87,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: UIPaddings.scrolledScreen
                    .copyWith(top: MediaQuery.of(context).viewPadding.top),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          subTitle,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          title,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const MewnuSmallLogo(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          sliverList,
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
