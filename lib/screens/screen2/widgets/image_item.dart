import 'package:flutter/foundation.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:interview_app/constants/app_colors.dart';
import 'package:interview_app/models/image/image_model.dart';

class ImageItem extends StatelessWidget {
  final ImageModel image;

  const ImageItem(
    this.image, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grey,
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 4,
        right: 12,
      ),
      margin: const EdgeInsets.only(top: 8, left: 10, right: 10),
      child: Row(
        children: [
          SizedBox.square(
            dimension: 56,
            child: Stack(
              fit: StackFit.expand,
              children: [
                SvgPicture.asset(
                  'assets/images/img_placeholder.svg',
                  color: Colors.black,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(image.url),
                  backgroundColor: Colors.transparent,
                  onBackgroundImageError: (_, __) {
                    // TOOD: handle loading imgae error
                  },
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  image.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('${image.width} x ${image.height}'),
                Text(
                  image.id,
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
