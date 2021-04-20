import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize{
  AppBarWidget() : super(    
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,      
      child: Stack(
        children: [
          Container(
            height: 161,
            width: double.maxFinite,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                  text:'Olá, ',
                  style: AppTextStyles.title,
                  children:[
                    TextSpan(
                      text: 'Jóse Henrique',
                      style: AppTextStyles.titleBold
                    )])
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://avatars.githubusercontent.com/u/57269257?s=400&u=400de805fef9316c001fc7c5e55ab164327399c3&v=4')),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: ScoreCardWidget()
          ),
        ],
      ),
    )
  );
}
