import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CertifiedBadge extends StatelessWidget {
  final bool isSub;

  const CertifiedBadge({Key? key, this.isSub = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 97.6,
      height: 17.0,
      decoration: BoxDecoration(
        color: const Color(0xFF7E3434),
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/certified.svg', width: 12.0, height: 11.0),
          const SizedBox(width: 5.0),
          Text(
            'Certified ${isSub ? ' Sub' : 'Dom'}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
