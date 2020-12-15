import 'package:flutter/material.dart';
import 'package:demo/screen/animation/router.dart';

Widget createAnimationNavigation(BuildContext context) {
  return ExpansionTile(
    title: Text('动画相关'),
    children: animationRoutes
        .map((e) => ListTile(
              title: Text(e.desc),
              onTap: () => Navigator.of(context).pushNamed(e.name),
            ))
        .toList(),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DEMO'),
      ),
      body: SingleChildScrollView(
        child: createAnimationNavigation(context),
      ),
    );
  }
}
