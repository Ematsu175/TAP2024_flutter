import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tap_2024/models/popular_models.dart';

class PopularView extends StatelessWidget {
  PopularView({super.key, this.popularModel});

  PopularModel? popularModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: 'https://image.tmdb.org/t/p/w500/${popularModel!.backdropPath}',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => Image.network('https://ethic.es/wp-content/uploads/2023/03/imagen-1280x768.jpg'),
        ),
      )
      
    );
  }
}