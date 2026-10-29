# Verification target: Basic Basic Namespaced Public Equal Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97231746c799e53795db471232aebef9fc17642b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97231746c799e53795db471232aebef9fc17642b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Data.UInt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equalSet](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/equalset.md) | 35 | `declaration-track:eb4c5e3de0c857a9121d877d3735f7cc1762a4604a52dedc683aabb242328701` |
| 2 | `def` | [rangeMinWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/rangeminwith.md) | 44 | `declaration-track:7851bf2931b0ffb07ecb1475d74446bcb4ed7a9ebbd9cb1b4af032ac302a286c` |
| 3 | `def` | [minWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/minwith.md) | 50 | `declaration-track:2a9cd8636c05b7856707e7a69b374823b1d366c31a6a7cecd6ac27352bd2ff41` |
| 4 | `def` | [rangeMinD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/rangemind.md) | 58 | `declaration-track:9872c2297d9136a463f8e410486903e23dc4c1622ac8748609e3b77f8b272ff0` |
| 5 | `def` | [minD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/mind.md) | 66 | `declaration-track:37ec9b5f17397ad227888dd4e905e5fab0c7866725c017fec564ab7fc0e6a820` |
| 6 | `def` | [rangeMin?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/rangemin.md) | 74 | `declaration-track:b3c4a902793a3a7b637434d6f998cda550e6c26e00f6ba57829c7d3578396ac9` |
| 7 | `def` | [rangeMinI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/rangemini.md) | 87 | `declaration-track:8c18559040c42e02cc59921b07e196714585634324fd09849fa83f5cb91f072a` |
| 8 | `def` | [minI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/mini.md) | 92 | `declaration-track:bc715a7372dde71431cee42d784d575f61285d9045ac6d1eb86abe9f7d7ca850` |
| 9 | `def` | [rangeMaxWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/rangemaxwith.md) | 100 | `declaration-track:cbcc72f4f8478d9a62e72e07651e3eaf4cc3d3d795a180f1c020b40ad3a5a6d7` |
| 10 | `def` | [maxWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/maxwith.md) | 105 | `declaration-track:5589496db7682b5cf9b0724b75bc627b21b3fc60cb82c7f3f6c8ef2979c0148c` |
| 11 | `def` | [rangeMaxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/rangemaxd.md) | 113 | `declaration-track:148b44a45454d7a0262abe9c02136a771deb9fac210d580910f78b2de6816ce0` |
| 12 | `def` | [maxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/maxd.md) | 118 | `declaration-track:63398c90d526ee91fdb09a7ff15d563824b4d53668790c8197571258fe2bc86b` |
| 13 | `def` | [rangeMax?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/rangemax.md) | 126 | `declaration-track:6ad175d13d4f1d18344191aec0798bcb151026471951854f0729fe9b035f5841` |
| 14 | `def` | [rangeMaxI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/rangemaxi.md) | 136 | `declaration-track:874c5a8984c877758116d1c147e10f370f2d3a7bcf3f750d6d551bb4e0a7aa7f` |
| 15 | `def` | [maxI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/maxi.md) | 141 | `declaration-track:663da66e596214ae592e7b15ca7c966fa7588bcfc9558ef5bb973f13422faa74` |
| 16 | `abbrev` | [SizeFitsUSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/sizefitsusize.md) | 150 | `declaration-track:5d560006a759786f95163be1f6ab75b7d53246149c5d96cee3002b4080ef9ac7` |
| 17 | `def` | [unsafe_sizeFitsUSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/unsafe-sizefitsusize.md) | 158 | `declaration-track:84935af41f1ea4631470e00718b4a029dc46885aaaa60752674e67e6c80aa9b1` |
| 18 | `def` | [scanlMFast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanlmfast.md) | 162 | `declaration-track:d62028577a27f6503e8fd67f200f3c61f0a745839fc05edb9dc5454f38790dd0` |
| 19 | `def` | [scanlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanlm.md) | 213 | `declaration-track:a273d70738a9c4eab76be514ddf520c87f22bc08f7d7612e6a61ef7250cc7720` |
| 20 | `theorem` | [scanlM_loop_eq_scanlMFast_loop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanlm-loop-eq-scanlmfast-loop.md) | 225 | `result-track:18d89d0037ca72f600b2d7c8a0017d4c78990ce5450cb03e1be02bddd7f82748` |
| 21 | `theorem` | [scanlM_eq_scanlMFast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanlm-eq-scanlmfast.md) | 254 | `result-track:9746d1be4726a00b513ae3f663bca7be9c2c58fb5b3f4b1f3235c9b44b2f0faf` |
| 22 | `def` | [scanrMFast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanrmfast.md) | 264 | `declaration-track:e49661c7ea1a78bd3e192508583c6b97df2729f1238b60425e139320c1f4345a` |
| 23 | `def` | [scanrMUnsafe](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanrmunsafe.md) | 306 | `declaration-track:75c73521f509880a567692cc690ec1fafe7bd23467ce90c4615397bd278c662a` |
| 24 | `def` | [scanrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanrm.md) | 339 | `declaration-track:27cc44fa2f30a20a26fd9a03ebb92c9367854e32787ec0bda83d7640760a0655` |
| 25 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanl-source-edition-2.md) | 364 | `declaration-track:6ce718f8b669ce2efe08758fe2c870cf8cf43e3602aacdf3305c178957ff74fb` |
| 26 | `def` | [scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanr-source-edition-2.md) | 374 | `declaration-track:dfd8d490e1c5d6aeb04e2b5a4d5d457dea78b71ff0e49d715eab7315c057dd01` |
| 27 | `def` | [scanlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanlm-source-edition-2.md) | 385 | `declaration-track:c38f0591adabb026e0b230f2f45d6f1f7255092c2620113156777e8fd06a45a7` |
| 28 | `def` | [scanrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanrm-source-edition-2.md) | 392 | `declaration-track:ac9740bdfc7fbd33fad3b87ee37b7e10d4b60b85b01633a20c7a4fb25bb1c24b` |
| 29 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanl.md) | 399 | `declaration-track:2f35dcacf998d3452470a0788eea17a835b26a132767443ff789dd156d8e36a7` |
| 30 | `def` | [scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/scanr.md) | 406 | `declaration-track:503bdd5bdc5a915cc957568908dd781cfd2d0e8ea0f5beec413f859dfc308ad9` |
| 31 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/isempty.md) | 413 | `declaration-track:4e40c74810084230fa0fc0d0d2551401424231469703830269cb901322431ac7` |
| 32 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/contains.md) | 420 | `declaration-track:8e51938fbfc543db6c365976e876ed779af61dc5b8f8134fa130bf7f1c7edaa4` |
| 33 | `def` | [popHead?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEqualSet.lean/declarations/pophead.md) | 427 | `declaration-track:726c07f48bb501b798ec7160fb58611e70109e224af4238bbb18454064535ab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd2c81de1178121fb933e53f7c6d568a46ed70844e1604746726b69e1de78d96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
