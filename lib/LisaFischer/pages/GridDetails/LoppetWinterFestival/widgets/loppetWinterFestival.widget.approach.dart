import 'package:flutter/material.dart';

import '../../../../../configs/configs.dart';
import '../../../../widgets/widgets.dart';

class P3Approch extends StatelessWidget {
  final double maxWidth;

  final String _approachText =
      "Similar to snowflakes, the magic of sceenprinting is that no two prints are exactly alike. Every poster has the same basic structure but each one crystalizes into an individual print through the imperfections of the screenprinting process. The 2017 Loppet poster embraces the unique beauty of Minnesota Winter and a diverse community coming together through the depiction of one intricate, yet subdued, majestic snowflake.";

  const P3Approch({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "APPROACH",
          style: MyTextStyles().smallHeader13pxW610,
        ),
        columnSpace,
        Text(
          "No two snowflakes are alike",
          style: MyTextStyles().sub26.copyWith(
                color: Colors.black,
              ),
        ),
        columnSpace,
        greenColorLine,
        SizedBox(
          height: 30,
        ),
        Text(
          _approachText,
          textAlign: TextAlign.center,
          softWrap: true,
          style: MyTextStyles().normalS16_W500_LH22_C737373,
        ),
        columnSpace,
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587238918434-X29JU1GL3PSUQIL96K9H/ke17ZwdGBToddI8pDm48kF3OGmqRexbaat4Fgu0tdYsUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYwL8IeDg6_3B-BRuF4nNrNcQkVuAT7tdErd0wQFEGFSnNfmAL_0sLdQw3xKQnFn5blfCL0lSjXcZxb6AeIGgaRz_wejoirbp4zIamh7A25P1w/snowflakes-18.png?format=300w",
          width: maxWidth * .75,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: columnSpace.height! * 3,
        )
      ],
    );
  }
}
