import 'package:go_router/go_router.dart';

void custemVavigationRouter(context, path) {
  GoRouter.of(context).go('/${path}');
}
