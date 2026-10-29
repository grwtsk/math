# Verification target: Polish Namespaced Formula Tree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba616b567391633b8fc5f575af3a8e5e02657f7c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant77a0265fa8587367aec3839df5705b9ce4b2f5ddfb7838ca46c2493de9af2401.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba616b567391633b8fc5f575af3a8e5e02657f7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant77a0265fa8587367aec3839df5705b9ce4b2f5ddfb7838ca46c2493de9af2401.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant77a0265fa8587367aec3839df5705b9ce4b2f5ddfb7838ca46c2493de9af2401.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Syntax.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prefix.LukasiewiczSymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/prefix-lukasiewiczsymbol.md) | 20 | `declaration-track:e08fa96325271bfa9421a8fde289d6c3be1071a1051bcbcd52bea0deb1a67946` |
| 2 | `def` | [Prefix.LukasiewiczSymbol.arity](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/prefix-lukasiewiczsymbol-arity.md) | 30 | `declaration-track:57c60a8ef8a913260580a24eec29a8a3298181c5cc436f2cf9e66b21736ec20e` |
| 3 | `def` | [Prefix.LukasiewiczSymbol.code](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/prefix-lukasiewiczsymbol-code.md) | 39 | `declaration-track:76a0400ebb19dbd8adb86cf8d57ffe03f764f3b40eb5e42c1754af950ba82a7d` |
| 4 | `def` | [Prefix.LukasiewiczSymbol.meaning](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/prefix-lukasiewiczsymbol-meaning.md) | 48 | `declaration-track:f339584e145a005a8db16cad1b7e6cebf25022005298dd7e2b5a21f350bc339c` |
| 5 | `def` | [Prefix.LukasiewiczSymbol.symbolMap](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/prefix-lukasiewiczsymbol-symbolmap.md) | 57 | `declaration-track:c4b705140b44514a0803e07cd39dd3b0e336251a37f3d37641ec185e513e39d9` |
| 6 | `inductive` | [Prefix.StrictToken](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/prefix-stricttoken.md) | 73 | `declaration-track:650edd37fecbb7e2731450de65f3f91dccd28d2f12982683072d2e9b566ed2d8` |
| 7 | `def` | [FormulaTree.toStrictPolish](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/formulatree-tostrictpolish.md) | 85 | `declaration-track:a183de6f1b427c3ffa0f6cbf1bbad351f6509a221684dc5830c1244d6e642e16` |
| 8 | `def` | [FormulaTree.parseStrictPolishFuel](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/formulatree-parsestrictpolishfuel.md) | 107 | `declaration-track:4462e9efdd1b1fd93825643acd50b105bc22793a356b51d7aea95226b7bc8bbf` |
| 9 | `def` | [FormulaTree.fromStrictPolish?](../../../../../ComputerScience/AlgorithmsInComputerScience/PolishNamespacedFormulaTree.lean/declarations/formulatree-fromstrictpolish.md) | 145 | `declaration-track:63a900afcbc73b65154d6eecce21b68d5e38b7aad30be09459a4c03199e55aff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6a74834e3825f83fbc50e3989360df89cdaf32e5ae3cc2cee6b21d350f9a90e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant77a0265fa8587367aec3839df5705b9ce4b2f5ddfb7838ca46c2493de9af2401.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant77a0265fa8587367aec3839df5705b9ce4b2f5ddfb7838ca46c2493de9af2401.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
