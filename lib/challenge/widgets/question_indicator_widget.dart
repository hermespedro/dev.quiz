import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Questão 04",
                  style: AppTextStyles.body,
                ),
                Text(
                  "/10",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(value: 0.7),
          ],
        ),
      ),
    );
  }
}
