import 'package:mgt_prototype/model/response/module_response.dart';

class DummysRepository {
  static List<FunctionModuleResponse> functionModuleResponses =
      <FunctionModuleResponse>[
    FunctionModuleResponse(
        'Heat Module', '#', 'Heats bottle', 30, 'Heating bottle'),
    FunctionModuleResponse('Hydration Module', '#',
        'Indicates how much left to drink', 20, 'Hydrating owner'),
  ];
  static List<DesignModuleResponse> designModuleResponse =
      <DesignModuleResponse>[
    DesignModuleResponse(
        'Some module', '#', 'It\'s some module', 25, 'Beautiful'),
  ];
}
