from sqlmesh.core.macros import MacroEvaluator, macro, RuntimeStage


@macro()
def macro1(
        evaluator: MacroEvaluator
) -> str:
    print("macro1 hello there")
    print(RuntimeStage.CREATING)
    return "1"


@macro()
def macro2(
        evaluator: MacroEvaluator
) -> str:
    print("macro2 hello there")
    print(RuntimeStage.LOADING)
    return "2"
