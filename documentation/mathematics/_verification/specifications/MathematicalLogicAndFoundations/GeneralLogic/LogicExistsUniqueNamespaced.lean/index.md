# Verification target: Logic Exists Unique Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e9570d340b3a26e9a19915b3e537032373e174c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e9570d340b3a26e9a19915b3e537032373e174c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.TypeStar` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Alias` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExistsUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique.md) | 27 | `declaration-track:258d1a693b50ee3d2359d4025666d6dc1bc866cdd3d829fae8d066e493b4dedc` |
| 2 | `def` | [isExplicitBinderSingular](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/isexplicitbindersingular.md) | 33 | `declaration-track:b0cca1bf757abf453dbbc8ec74bd36a3992cb7bd85ad5581f47938c8ecbdcbf3` |
| 3 | `macro` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/macro.md) | 48 | `declaration-track:17cd378f55efa739bc25c4987a22f843073ed6fc822db46a7a0105ab59049f37` |
| 4 | `def` | [unexpandExistsUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/unexpandexistsunique.md) | 63 | `declaration-track:21c7daa04331abc9dc39238b6ff0d0f9c686ed361c4fad590a9ca0a0d8ddc91d` |
| 5 | `syntax` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/syntax.md) | 74 | `declaration-track:15eae350a34df5016e2d09de1ac550f9712df4a6680a85f2af4b02e4edf8a1ee` |
| 6 | `macro_rules` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/macro-rules.md) | 76 | `declaration-track:fbc0b4c0fed5f646ab51e7682332cef8860cc67303ae5569bddbd24d81059f30` |
| 7 | `theorem` | [ExistsUnique.intro](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-intro-source-edition-2.md) | 83 | `result-track:d961d8a44df43300c7f6b9eeb205f6449a7d9654f1fefff4a8cbcb07cecf49bd` |
| 8 | `theorem` | [ExistsUnique.elim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-elim-source-edition-2.md) | 86 | `result-track:b6b951a1a2fc763ae03cf79da9a1caac73eb059b1644d5e591b564cdd874589e` |
| 9 | `theorem` | [existsUnique_of_exists_of_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-of-exists-of-unique.md) | 90 | `result-track:c40f9078edcaf05d934b993164b5e4a8773e70c231a1da714a2b8179e96c15aa` |
| 10 | `theorem` | [ExistsUnique.exists](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-exists.md) | 97 | `result-track:585cf443022d632ba022b8f1bd2530ec92dabf9335654e1b03444aafbd103d20` |
| 11 | `theorem` | [ExistsUnique.unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-unique.md) | 99 | `result-track:14f752cac9485badaab871d71875336f42a91639f28a8e0a78d06aec9f0ff90a` |
| 12 | `theorem` | [existsUnique_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-congr.md) | 108 | `result-track:32f1b982f302485eddfd3a73b800425e0532c442172a400d6974902ccafd1b70` |
| 13 | `theorem` | [existsUnique_iff_exists](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-iff-exists.md) | 111 | `result-track:d9389ea750f11ea3a72cb71ba375b1f57372a9a3794f7119d11a2eb22ee7e16e` |
| 14 | `theorem` | [existsUnique_const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-const.md) | 117 | `result-track:51b38c32922e82d9d8781189fecba6affb8a4edf739d0b6040a43e33f2d8a090` |
| 15 | `theorem` | [existsUnique_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-eq.md) | 122 | `result-track:0124e100ca1a5353452dbf5f4c2de7b6a37176ebccf454c9f6f8489562647255` |
| 16 | `theorem` | [existsUnique_eq'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-eq-source-edition-2.md) | 128 | `result-track:652ae74e0ec369f2fd31933fc3bf7fbfe1581dc00067a54c2b5f9072ffa6cac2` |
| 17 | `theorem` | [existsUnique_prop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-prop.md) | 133 | `result-track:5cc650ad4360a329f62fd16c8502c92d7266ca6764598504237fbeae908539a4` |
| 18 | `theorem` | [existsUnique_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-false.md) | 137 | `result-track:379af5cb3dc8ffe0ae6379a26a421148a66335906feb5758e219f41a95c0c078` |
| 19 | `theorem` | [existsUnique_prop_of_true](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-prop-of-true.md) | 141 | `result-track:886e8125921701ec8c78914e220cf7a0bd4a108c220e5ccbd9c4ca1f93563dc2` |
| 20 | `theorem` | [ExistsUnique.elim₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-elim.md) | 146 | `result-track:a4b1e3f7d9165c1619dbd9a9b4cc70c600121d23ba1cd51070eee8fc20362acc` |
| 21 | `theorem` | [ExistsUnique.intro₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-intro.md) | 153 | `result-track:307513b42db6aad16763bc14a423d5671101eae3c9240249b02f2a924e65b008` |
| 22 | `theorem` | [ExistsUnique.exists₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-exists-source-edition-2.md) | 159 | `result-track:a804ffc761690bf2903cf13616d4f1dccc52f6f747f87c4ca08ec28f9f637f1a` |
| 23 | `theorem` | [ExistsUnique.unique₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicExistsUniqueNamespaced.lean/declarations/existsunique-unique-source-edition-2.md) | 163 | `result-track:79849bf7bb4c7887a61b7363cae631717f8cf3769f5e3073655f657404bab2f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c35e571a9226dff88eb150a95ca08851380ef0d80060bde891ffbd5ff05a2953 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variantd7a14304d4a4ffc74798960de52aa2e4d7d1d5525a79c8e77659c38db8a61472.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
