import 'package:alarm_app/core/utils/media_query_values.dart';
import 'package:alarm_app/features/home/presentaion/veiws/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimillerBooksListView extends StatelessWidget {
  const SimillerBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .15,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
