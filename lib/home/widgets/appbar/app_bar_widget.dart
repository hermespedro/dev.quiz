import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 161,
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: "Olá,",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                                text: " Visitante",
                                style: AppTextStyles.titleBold),
                          ])),
                      Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdnstatic8.com/emporiodoeva.com.br/wp-content/uploads/2015/04/eva-amarelo-700x600.jpg"))),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1.2),
                  child: ScoreCardWidget(),
                ),
              ],
            ),
          ),
        );
}
