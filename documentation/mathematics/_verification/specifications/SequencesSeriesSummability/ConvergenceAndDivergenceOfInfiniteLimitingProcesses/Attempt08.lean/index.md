# Verification target: Attempt08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b707217c722b21314360f23a9bfa1e6e915395c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b707217c722b21314360f23a9bfa1e6e915395c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/outerweight.md) | 18 | `declaration-track:997f461a67dcc00a854963a304fdb9eb10528de782b3799b7a1d460b63abc526` |
| 2 | `def` | [exponentWeight](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/exponentweight.md) | 20 | `declaration-track:a52c7d946fa043e6092dc6570e24d040d69b0c5f016c21f5062db6df672765de` |
| 3 | `def` | [momentAtom](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/momentatom.md) | 22 | `declaration-track:c779dbcba8078a26a42a43ee0ac640c95ee183c907c7b0385548b491829a5d9f` |
| 4 | `def` | [primeMomentAtom](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/primemomentatom.md) | 25 | `declaration-track:049ba70fcd56aee97e9c3a59bb144c83709400544e531719ece898cf84f99205` |
| 5 | `def` | [properPowerMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/properpowermoment.md) | 27 | `declaration-track:bf67a99d812e45d487cc5f64aaf3cbc213bd773c108a9b4171059bed55ff0cba` |
| 6 | `def` | [properPowerB1](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/properpowerb1.md) | 29 | `declaration-track:f824f8234ff2e6579020826f0f4770d31e98f2fd449f695bd5bff4809689058a` |
| 7 | `def` | [properPowerB2](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/properpowerb2.md) | 31 | `declaration-track:8e0b2d97340de0f9767395afaaf0b8ce47f171386b539f04fee8704568fc6c94` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/outerweight-nonneg.md) | 33 | `result-track:8e171b6f48b34a14cefecc823400f857fb31b7284c369bcdd5aec46667b96be3` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/exponentweight-nonneg.md) | 41 | `result-track:5a6f215d4ae5f98579199d86e1056445fad5a5934b6bce832b5cc971cfcd2dc9` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/momentatom-nonneg.md) | 45 | `result-track:48da8cb846225c93d97204c8ab02e73d98701d2b70a8e8f108b26df75b88ee17` |
| 11 | `theorem` | [outerWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/outerweight-summable.md) | 53 | `result-track:8f9578c4a86208b019076010ee1e838b02c0dcb24d017c8424da59b9a443cae1` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/exponentweight-summable.md) | 83 | `result-track:694d95d0d732f4ce4c1a9d518055013d972907acc4681bf5202529fc1f1fd9ee` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/momentatom-le-product.md) | 92 | `result-track:a9f75e17b5e6796f34b0769791f63469971250c2d0b8dcf4361e52c534f330ba` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/prime-outerweight-summable.md) | 113 | `result-track:74a77b514547bebcb634e9ae852fb05cc51bc8dfa4dcf1a99819a52d013cae75` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/primemomentatom-summable.md) | 117 | `result-track:fd31bb3d2475bdd17b3b5bafee28b5d1e8695f24bd26ca987f17c1a013e86dd1` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/primemomentatom-inner-summable.md) | 124 | `result-track:3fb114851e478fd043ba1fbd2335a35dc7d8f3041a6eac3ba7bbc22e51b57564` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/primemomentatom-outer-summable.md) | 129 | `result-track:ca605ab8fa7dcfa1ba99355cf5b90dc1eb5d9cda065b8143f885fb27fbbb4cb4` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/properpowermoment-nonneg.md) | 134 | `result-track:bf4d6495df006bffb90ddc7a2afbb54f143aa0a9529779b5c55fa520d3ef8fbd` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/finiteproperpowermoment-le-b1.md) | 137 | `result-track:24135ac5824a5225740c9c3b6b1098c4fac78a487c724e07f0b03f77b6483f22` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/properpowerb1-gt-nine-quarters.md) | 166 | `result-track:ccb7c8e544e77bc2dc4631d0e18ec81973122705d44f1600b5ecf5da2efa943a` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/arithmeticconstant-gt-one-five-hundred.md) | 169 | `result-track:b8de62dde1521ac4889e69ab037644e0a50d0ceb92fcc6b05395f4c96be71e72` |
| 22 | `def` | [omittedOnsetAtom](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsetatom.md) | 175 | `declaration-track:3dbacd8764c1967c57e1bca46e83792b08a7a1d82d55b5fee17a2fb4079f2517` |
| 23 | `def` | [omittedOnsetTail](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsettail.md) | 179 | `declaration-track:b15c1d61e1661e3cc5a04a40fbae203e989afe288ad1d3b5e9bfc98ff24a8879` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/properpowermoment-eq-joint-sum.md) | 182 | `result-track:4bd43fe1f88ea1e622037304e199bc4f393598a919578d822b231130c471e80a` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsetatom-nonneg.md) | 186 | `result-track:5c0029e3ae5468dfe2a0e0134d01cf1dda3490841486c0c6c577f825761bbbab` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsetatom-le-zeromoment.md) | 192 | `result-track:c37d057b5692801c2e7178d345d362d728a0cd91a77f72c0a20f9b1661bb7865` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsettail-summable.md) | 199 | `result-track:b517e070e99d030f0dcd45b921418a75bc51bf77f6f46df4fd74bdf2a3225e7e` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsettail-nonneg.md) | 204 | `result-track:eff8e25677c372e3e7efc93189c3c72700c381d532af4526de69d22a67ac4986` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsettail-eq-iterated.md) | 207 | `result-track:839374d863b047dc31c3591a4c4b84dac615bb8a4bcb2f4be6faefed109c82ef` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsetatom-secondmoment.md) | 211 | `result-track:c5b5d2b67212e9afa8fb379354e0f658a2205e69db992779d4be1ea6f0fb78de` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/Attempt08.lean/declarations/omittedonsettail-le-b2-div-square.md) | 226 | `result-track:942c90e831b4cae67ddc9a4ee52fb912a5ad3bb15eddc736c9f7c6db094601a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04a427ff44a4248c8c6b35d8ec46d177851eca230284332680de26d489fae3c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
