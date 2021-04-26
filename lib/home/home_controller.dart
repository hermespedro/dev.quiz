import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;

  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Hermes",
      photoUrl:
          "https://pbs.twimg.com/profile_images/1367848412339638273/Ol63Ur3N_400x400.jpg",
    );
    state = HomeState.succes;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        title: "nlw 5 flutter",
        questions: [
          QuestionModel(
            title: "Esta curtindo o flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo 1"),
              AnswerModel(title: "Estou curtindoo 2"),
              AnswerModel(title: "Estou curtindooo 3"),
              AnswerModel(title: "Estou curtindoooo 4", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Esta curtindo o flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo 1"),
              AnswerModel(title: "Estou curtindoo 2"),
              AnswerModel(title: "Estou curtindooo 3"),
              AnswerModel(title: "Estou curtindoooo 4", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Esta curtindo o flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo 1"),
              AnswerModel(title: "Estou curtindoo 2"),
              AnswerModel(title: "Estou curtindooo 3"),
              AnswerModel(title: "Estou curtindoooo 4", isRight: true),
            ],
          ),
        ],
        image: AppImages.blocks,
        level: Level.facil,
      )
    ];
    state = HomeState.succes;
  }
}
