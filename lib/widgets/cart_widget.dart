import 'package:flutter/material.dart';
import 'package:obeypay/utils/notificationService.dart';
import '../widgets/text_styles.dart';

class CartCard extends StatelessWidget {
  final String currency;
  final String cost;

  const CartCard({Key? key, required this.currency, required this.cost})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            Future.delayed(Duration(seconds: 2), () {
              if (Navigator.canPop(context)) {
                Navigator.of(context).pop();
              }
            },);
            NotificationService().showNotification(
              title: 'New Gift Received!',
              body: 'You were send €50.000',
            );
            return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: Image.asset('assets/images/purchase.png'),
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(
          top: screenHeight * 0.058,
          left: screenWidth * 0.12,
          right: screenWidth * 0.10,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(currency, style: AppStyles.chatNameStyle(context)),
          Text(cost, style: AppStyles.chatNameStyle(context)),
        ],
      ),
    );
  }
}
