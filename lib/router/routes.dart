import 'package:flutter/material.dart';
import 'package:demo/screen/animation/router.dart';

class CreateRoute {
  final String name;
  final String desc;
  final Widget component;

  CreateRoute(this.name, this.desc, this.component);
}

final List<CreateRoute> routes = List.from(animationRoutes);

final Map<String, Widget Function(BuildContext)> ALLROUTES = Map.fromIterables(
    routes.map((e) => e.name), routes.map((e) => ((context) => e.component)));
