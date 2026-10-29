# Verification target: Finite Log Affine Covariance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fcc27e1716cd7cf19c9b8beb5e0157c667c0890",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fcc27e1716cd7cf19c9b8beb5e0157c667c0890`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AffineReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLogAffineFamily](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/finitelogaffinefamily.md) | 54 | `declaration-track:dd4c5ab2434c6ddd6cdd6eea289f4195f281f35208879c535addf8e025d3c213` |
| 2 | `def` | [unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/unnormalizedweight.md) | 66 | `declaration-track:92886e1ca2dc358e15690031910848952a2c05f9b20f905db5e15ac9dd1ef4cd` |
| 3 | `theorem` | [unnormalizedWeight_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/unnormalizedweight-pos.md) | 70 | `result-track:e0a42e00e77dcb198864bbde23665e4cd6ea373ab15999768e3b310ab0e07d3a` |
| 4 | `def` | [partition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/partition.md) | 75 | `declaration-track:bf1ad38c8dd8024470d63edc9a6490e9d432d0b74cce1798f57a1e7f3a7a1aab` |
| 5 | `theorem` | [partition_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/partition-pos.md) | 79 | `result-track:c3ae575906b6d2bc58e1f7b05062f539601d2d6f06e51f1b577b901d86fcbf6f` |
| 6 | `def` | [logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/logpartition.md) | 87 | `declaration-track:5c94e9aeec755c0f1ee0e08c1a7d3d4fe7ffacd02208e3ff0108871927ac65a3` |
| 7 | `theorem` | [exp_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/exp-logpartition.md) | 91 | `result-track:6f5059b8abd8c4a5384540306d4283ca323c73ef293403cff29a6284ddd6cfe2` |
| 8 | `def` | [probability](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/probability.md) | 96 | `declaration-track:cfa324127eece1e686d228fffe236ec756c2e326aacc05fe995d9f1bd32b0aea` |
| 9 | `theorem` | [probability_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/probability-pos.md) | 100 | `result-track:83b111068e946a5d42763937a02e390f42b03418cd2754a79c0e9cb468e5a907` |
| 10 | `theorem` | [probability_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/probability-nonnegative.md) | 105 | `result-track:8651eca25c2e42043e0001626a1874c238e9155e852777757cd42f88ea60afa0` |
| 11 | `theorem` | [probability_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/probability-sum.md) | 110 | `result-track:f47f2a69e9e7ed3e729a976bd514657817821b6310f5ccaf920b9e059dc375eb` |
| 12 | `def` | [centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/centroid.md) | 119 | `declaration-track:58d834ab331282a5c590f1a6c9661d24eef54d8ef05f95af5a237e75fdf01188` |
| 13 | `theorem` | [centroid_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/centroid-apply.md) | 123 | `result-track:b18a4ed36d88e8fbfc4586d9a66ad3dd2e1e4a0d8ad8f3dddc7bbba9a7d03076` |
| 14 | `def` | [centeredStatistic](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/centeredstatistic.md) | 130 | `declaration-track:7503579d4d6f8281463bab64f12314733d6e358caa07ebbaacdf79eef721625e` |
| 15 | `theorem` | [centeredStatistic_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/centeredstatistic-apply.md) | 134 | `result-track:47f6ff870575c55aef6a5b0dd0c453c26d5b32e7e8f6690b6a4c046876d6da1f` |
| 16 | `def` | [covarianceForm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/covarianceform.md) | 140 | `declaration-track:94f4a581da5a08815cfd1e408c665c7a0eed8659666c20345008aee623e166ec` |
| 17 | `theorem` | [covarianceForm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/covarianceform-apply.md) | 185 | `result-track:642bd3bee7a3a2b08793c839f33ace9fe19431003e40404b2aa55b0f242b261f` |
| 18 | `theorem` | [covarianceForm_diagonal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/covarianceform-diagonal.md) | 194 | `result-track:359fbe45bc1b11e746404f6b57325616e53980395da2e4be346454810dc6e410` |
| 19 | `theorem` | [covariance_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/covariance-nonnegative.md) | 205 | `result-track:119fbda6b369c6488f9b179b7527b5b9105dab014c0704279a56ad8932bff241` |
| 20 | `structure` | [FiniteLogAffineCovarianceRealization](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/finitelogaffinecovariancerealization.md) | 216 | `declaration-track:7928437ff9f903368abadcece5523905911c2f2b208266847e442b054478ae58` |
| 21 | `theorem` | [potential_realized_as_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/potential-realized-as-logpartition.md) | 235 | `result-track:48b7de83462587dfd2fce13909bd244d0ec3ce8499c74f51bcbd82cbef5d2224` |
| 22 | `theorem` | [gradient_realized_as_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/gradient-realized-as-centroid.md) | 240 | `result-track:8cf11f2cf2ebcb2390d10fb971546521c267e1b011738e996818f158d70e103f` |
| 23 | `theorem` | [geometryAt_eq_covariance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/geometryat-eq-covariance.md) | 245 | `result-track:268028b8b47acc5c45d378c81e6ebbe0de2494e53fbcf2afde8111c2d921e8b1` |
| 24 | `theorem` | [hessian_eq_covariance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/hessian-eq-covariance.md) | 250 | `result-track:1af6c9f80cdcbfe93e1a21533a19c520ffdff5f97b4c96c320ec4b1420cb3671` |
| 25 | `theorem` | [hessian_diagonal_eq_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/hessian-diagonal-eq-variance.md) | 257 | `result-track:72bec9d03bf54e303a517417c0a550ee8266a94694f4f6237cc4f3894c2d4919` |
| 26 | `theorem` | [hessian_covariance_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/hessian-covariance-nonnegative.md) | 266 | `result-track:986e6aca6e8e5b6b65814382d41d782a46bd54e66f3d050c0be8c9a9f9526d2e` |
| 27 | `theorem` | [visible_iff_positive_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/visible-iff-positive-variance.md) | 273 | `result-track:cb5e9b2eb73e5a46c886795b216a9a34b3c80a6b44cbf3e667f6912f17b8414b` |
| 28 | `theorem` | [isNull_iff_zero_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/declarations/isnull-iff-zero-variance.md) | 284 | `result-track:f2dfb156dcfcbbe2fec2636a324f506cf38316670995bfe377e953fd71a64a28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=792232a01dd83ed224855a288013e504207aff3c0a67f441ee9b8707ab76d030 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
