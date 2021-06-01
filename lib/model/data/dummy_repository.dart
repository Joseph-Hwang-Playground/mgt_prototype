import 'package:flutter/material.dart';
import 'package:mgt_prototype/model/response/challenge_response.dart';
import 'package:mgt_prototype/model/response/module_response.dart';

class DummysRepository {
  static List<FunctionModuleResponse> functionModuleResponses =
      <FunctionModuleResponse>[
    FunctionModuleResponse(
        'Filter',
        'assets/modules/filter_main.jpg',
        '''Filter module provides filtering function which can be useful 
        in situations like pouring tea, making cocktail, etc''',
        30,
        false,
        'Filtering solid among liquid'),
    FunctionModuleResponse(
        'Magnetic Mixer',
        'assets/modules/magnetic_mixer.jpg',
        '''Magnetic mixer module lets you mix various ingredients 
        with magnetic power. Since it works with magnetic power, 
        it has no noise, silent enough!''',
        50,
        false,
        'Mix various ingredients with slience'),
    FunctionModuleResponse(
        'Mixer',
        'assets/modules/mixer.jpg',
        'Mixer module lets you mix various ingredients with metal power!',
        40,
        false,
        'Mix various ingredients'),
    FunctionModuleResponse(
        'Pills Top',
        'assets/modules/pills_container.jpg',
        'This module provies you a space for storing pills! How useful it is!',
        35,
        false,
        'Provies pills storage'),
    FunctionModuleResponse(
        'Spray',
        'assets/modules/top_with_spray.jpg',
        '''Spray module allows you to spray the liquid inside of your bottle! 
      It would be useful in situations like watering plants, etc!''',
        30,
        false,
        'Provies spray function')
  ];

  static List<FunctionModuleResponse> loadFunctionModuleResponses() =>
      functionModuleResponses;

  static List<DesignModuleResponse> designModuleResponse =
      <DesignModuleResponse>[
    DesignModuleResponse(
        'Bottom Smooth',
        'assets/modules/bottom_plain.jpg',
        'This module provides very awesome bottom bottle design for your own custom bottle!',
        25,
        false,
        'Modern'),
    DesignModuleResponse(
        'Middle Expanded',
        'assets/modules/middle_expanded.jpg',
        'This module provides very long middle body which allows you to carry more liquid!',
        30,
        false,
        'Fancy'),
    DesignModuleResponse(
        'Middle Smooth',
        'assets/modules/middle_plain.jpg',
        'This module gives very awesome middle bottle design for your own custom bottle!',
        25,
        false,
        'Modern'),
    DesignModuleResponse(
        'Middle Holder',
        'assets/modules/middle_with_holder.jpg',
        'This module allows you to hold your own bottle gently with exclusive bottle holder!',
        35,
        false,
        'Modern'),
    DesignModuleResponse(
        'Top Smooth',
        'assets/modules/top_plain.jpg',
        'This module provies very awesome top bottle design for your own custom bottle!',
        20,
        false,
        'Modern'),
    DesignModuleResponse(
        'Straw Top',
        'assets/modules/top_with_straw.jpg',
        'This module provies straw which is it-tem for yo-zeum germ-men-nom-deul',
        50,
        false,
        'Super Modern')
  ];

  static List<DesignModuleResponse> loadDesignModuleResponses() =>
      designModuleResponse;

  static List<ChallengeResponse> challengeResponse = <ChallengeResponse>[
    ChallengeResponse('Challenge of the week of JUNE',
        'Drink 10L of water in this week', '10L', '5 days left', Colors.green),
    ChallengeResponse('30L challenge in JUNE',
        'Drink 30L of water in this month', '30L', '24 days left', Colors.blue),
    ChallengeResponse(
        '50L challenge in summer',
        'Drink 50L of water before the fall comes',
        '50L',
        '100 days left',
        Colors.deepOrange),
    ChallengeResponse(
        '100L challenge of the year',
        'Drink 100L of water before this year\'s gone',
        '100L',
        '245 days left',
        Colors.purpleAccent),
  ];

  static List<ChallengeResponse> loadChallengeResponses() => challengeResponse;
}
