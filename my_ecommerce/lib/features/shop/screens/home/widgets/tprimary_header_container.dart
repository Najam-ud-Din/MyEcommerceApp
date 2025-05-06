import 'package:flutter/cupertino.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcircularcontainer.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcurved_edgewidget.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';

class TprimaryHeaderContainer extends StatelessWidget {
  const TprimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TcurvedEdgewidget(
      child: Container(
        color: Tcolors.primaryColor,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              //circlar container
              Positioned(top: -150, right: -250, child: Tcircularcontainer()),
              Positioned(top: 100, right: -300, child: Tcircularcontainer()),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
