# Verification target: System State And Causal Comparison Adapters

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d124dc861e03ce87397e9a4dee7876d5212d28e0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/SystemStateAndCausalComparisonAdapters.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d124dc861e03ce87397e9a4dee7876d5212d28e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/SystemStateAndCausalComparisonAdapters.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/SystemStateAndCausalComparisonAdapters.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Properties` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Comparison.LogicalStatus` — import line 22; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 23; external provider; requires a separately pinned dependency.
- `DAF.Causal` — import line 24; external provider; requires a separately pinned dependency.
- `DAF.Refinement` — import line 25; external provider; requires a separately pinned dependency.
- `DAF.Upgrade` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toComparisonSpec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/tocomparisonspec-source-edition-2.md) | 70 | `declaration-track:665313682d5f2cbbfb5c79a5c0650bab84d0894a9d3419ca313b4ef212ff365e` |
| 2 | `theorem` | [toComparisonSpec_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/tocomparisonspec-apply.md) | 75 | `result-track:64745701a359f49fce4e6a94b9443bed43449487a69a3427087f65ad06f5b27f` |
| 3 | `theorem` | [toComparisonSpec_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/tocomparisonspec-comp.md) | 80 | `result-track:9d8f858074fea0cfa6eb3dd75376278790e70bc601718388a253da414bbcef77` |
| 4 | `def` | [causalStateComparisonSpec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/causalstatecomparisonspec-source-edition-3.md) | 86 | `declaration-track:ab83a3e9a2e9bc18ee97647ca76235608a17c909dc98f08a2de48e520bcced71` |
| 5 | `def` | [toComparisonSpec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/tocomparisonspec-source-edition-3.md) | 96 | `declaration-track:c715c2d1c6a8cfd5cd748bf1f8a0dd41cec6295d20b7be467ee60e468f724f27` |
| 6 | `theorem` | [toComparison_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/tocomparison-surjective.md) | 100 | `result-track:83aae125dbe042f41edd6e781d9a96df2c3bd62251dd2182406a378134e56b08` |
| 7 | `def` | [causalStateComparisonSpec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/causalstatecomparisonspec-source-edition-2.md) | 104 | `declaration-track:8c8f80dc0cdf19f6aa2b55cc96f1ac09236766b90a012b138eb19bfc578fd5d9` |
| 8 | `theorem` | [causalStateComparison_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/causalstatecomparison-surjective.md) | 110 | `result-track:5576eb9c154171011cb986ef8a83c073e71532ed9154fc3e38f1d9e1bc4cbeea` |
| 9 | `def` | [toComparisonSpec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/tocomparisonspec.md) | 120 | `declaration-track:2ab699aa22725adf67364fb5057b1ab1aedf31ab6f780a4c2006ceed092058f6` |
| 10 | `theorem` | [toComparison_bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/tocomparison-bijective.md) | 124 | `result-track:5e58877d3e58eb16273c3a0ed7f23f1c128b98dba326d4e2c4b394c05e22e0cf` |
| 11 | `def` | [causalStateComparisonSpec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/causalstatecomparisonspec.md) | 128 | `declaration-track:36486b1fdf3418acb9bc3f9ecde739707faca027024bcf3be2b90d489ef6b497` |
| 12 | `theorem` | [causalStateComparison_bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SystemStateAndCausalComparisonAdapters.lean/declarations/causalstatecomparison-bijective.md) | 132 | `result-track:7310ede5889940377ec39587dd9f63de1459813e1fd652e4d81028b0d25ecaa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55edae93f22fd09275f97fba3ba744b7440a7f77b980a4fcd59a2d491dc3489b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/SystemStateAndCausalComparisonAdapters.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/SystemStateAndCausalComparisonAdapters.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
