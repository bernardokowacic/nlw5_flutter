import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
                height: 280,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(gradient: AppGradients.linear),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(
                              text: "Olá, ",
                              style: AppTextStyles.title,
                              children: [
                                TextSpan(
                                    text: "Bernardo",
                                    style: AppTextStyles.titleBold)
                              ])),
                          Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://pps.whatsapp.net/v/t61.24694-24/175498602_458822781871493_5674633855339794721_n.jpg?ccb=11-4&oh=b998460e1a4d04d4520cd05d79df251d&oe=608D72E0"))))
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment(0.0, 1.0),
                        child: ScoreCardWidget())
                  ],
                )));
}
