import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuScaffoldFloatingAppBar extends StatelessWidget {
  final String title;
  final SliverList sliverList;
  final Widget? floatingActionButton;

  const MewnuScaffoldFloatingAppBar({
    super.key,
    required this.title,
    required this.sliverList,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            elevation: 0,
            floating: true,
            pinned: true,
            backgroundColor: Colors.black87,
            collapsedHeight: 0,
            toolbarHeight: 0,
            expandedHeight: 56,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: UIPaddings.scrolledScreen
                    .copyWith(top: MediaQuery.of(context).viewPadding.top),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
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
