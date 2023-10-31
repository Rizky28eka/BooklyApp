import 'package:alarm_app/core/utils/app_styles.dart';
import 'package:alarm_app/features/search/presentation/views/widgets/custom_search_text_feild_.dart';
import 'package:alarm_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchVeiwBody extends StatelessWidget {
  const SearchVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFeild(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Results",
            style: Styles.txtStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
