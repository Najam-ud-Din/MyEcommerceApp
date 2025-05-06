import 'package:flutter/cupertino.dart';
import 'package:my_ecommerce/common/styles/widgets/custom_shapes/curved_edges.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcircularcontainer.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';

class TcurvedEdgewidget extends StatelessWidget {
  const TcurvedEdgewidget({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TcustomEdges(),
      child: child,
    );
  }
}
