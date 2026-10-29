# Verification target: Finite Log Affine Covariance Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2da68fe987bc4bb37ce8fc1359c1bddf6cf715c2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante0d9b09e9cf6b9e3ad33e39be037b65f669c321138b178a9afa960a51a1a8208.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2da68fe987bc4bb37ce8fc1359c1bddf6cf715c2`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante0d9b09e9cf6b9e3ad33e39be037b65f669c321138b178a9afa960a51a1a8208.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante0d9b09e9cf6b9e3ad33e39be037b65f669c321138b178a9afa960a51a1a8208.lean.json)

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
| 1 | `structure` | [FiniteLogAffineFamily](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/finitelogaffinefamily.md) | 54 | `declaration-track:2c345f818fc15f78490bfd2fc6650b52eaea49d514be198978d42de0e16dd2cb` |
| 2 | `def` | [unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/unnormalizedweight.md) | 68 | `declaration-track:38c2f4cc1404a28d9f8295dd5ec6c6ac1a1468767c6a91c1a4cf09f11e39ee95` |
| 3 | `theorem` | [unnormalizedWeight_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/unnormalizedweight-pos.md) | 72 | `result-track:495cdf4e4f1d28afdb5dcd6458cd23879fa3d35ca8c5929c9d6d852dedab2786` |
| 4 | `def` | [partition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/partition.md) | 77 | `declaration-track:5a6a14091bfb8932ccde170627a06539c38fc7dee457f1fd60db44923221e37e` |
| 5 | `theorem` | [partition_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/partition-pos.md) | 81 | `result-track:ff9a9db1ba1e081ef49de674a88646329db7b144a18724c42b444ee920f10ad9` |
| 6 | `def` | [logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/logpartition.md) | 89 | `declaration-track:2945835722681dcc4f6f75fea2563977c4adfb07f5f36c87f1277184d27e518e` |
| 7 | `theorem` | [exp_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/exp-logpartition.md) | 93 | `result-track:6f29be9d7fe770f62d00d98637f66d42d6bfacacd657f5853a6a4c33993f34e7` |
| 8 | `def` | [probability](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/probability.md) | 98 | `declaration-track:9f066d238add35acdf3f471976f5592da96a48079c38ce367e7c0c360ed01e71` |
| 9 | `theorem` | [probability_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/probability-pos.md) | 102 | `result-track:ee8c0b4e476ecc0a364ea63bd861affcc50107f25a5594c8e232e5970d3d9ee0` |
| 10 | `theorem` | [probability_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/probability-nonnegative.md) | 107 | `result-track:25e912927669c3780472fe2dae54a7b0d33492e8a6596ce2c927e112b9866bd8` |
| 11 | `theorem` | [probability_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/probability-sum.md) | 112 | `result-track:247592340b5599d62fe3f573150ea975e3cba5876880da10dd6ccaa1cf2db71b` |
| 12 | `def` | [centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/centroid.md) | 121 | `declaration-track:b2804ba0f171f0a4c3262bf1623be7bc76cc0844cd82f1eda72d2eb250557c7a` |
| 13 | `theorem` | [centroid_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/centroid-apply.md) | 125 | `result-track:8d0cdab20417ad988b3e31bd844d8a7f4dee945fb007b5581b020bf80069f281` |
| 14 | `def` | [centeredStatistic](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/centeredstatistic.md) | 132 | `declaration-track:0c58f26f6628129611ca874901147aaad9879d876e0fec91ebd1618613b1fb2b` |
| 15 | `theorem` | [centeredStatistic_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/centeredstatistic-apply.md) | 136 | `result-track:8295d32a5b7fed01178aeec08e168018c4f97566e52d3ff249d0d5a2451b9c0d` |
| 16 | `def` | [covarianceForm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/covarianceform.md) | 142 | `declaration-track:732248e55a551d13626834eea239c80d244ebdb9b82e353e6b6d6128109a209e` |
| 17 | `theorem` | [covarianceForm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/covarianceform-apply.md) | 187 | `result-track:6e87627f42303982af3305b01182f2bebb044f90cd7e5191198e23907152afe7` |
| 18 | `theorem` | [covarianceForm_diagonal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/covarianceform-diagonal.md) | 196 | `result-track:eb8706faa5709c9ba494d63282756294ebe7deab90f00ca6b9c487d2417606cb` |
| 19 | `theorem` | [covariance_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/covariance-nonnegative.md) | 207 | `result-track:0dfb3edf4657e85dc49513d6f09bcaea188d048c2ce0d71484255a19c404026d` |
| 20 | `structure` | [FiniteLogAffineCovarianceRealization](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/finitelogaffinecovariancerealization.md) | 218 | `declaration-track:b9e093c4fe454d770f7d189aade55a01ed503927e5d30c2e4c64f87571afef2d` |
| 21 | `theorem` | [potential_realized_as_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/potential-realized-as-logpartition.md) | 237 | `result-track:471f40eae12a769252e65a9ce472fcd092a828029295630c1f519cf3cc82bf2c` |
| 22 | `theorem` | [gradient_realized_as_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/gradient-realized-as-centroid.md) | 242 | `result-track:acebe1cb492ea397cc3bcf50fe8dcf681c194cdd1a13053fa3c812f6bbdb0cc8` |
| 23 | `theorem` | [geometryAt_eq_covariance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/geometryat-eq-covariance.md) | 247 | `result-track:7094890bf7e7a772788fbd85a1f4692b245a14473e3e4601c25139ad93627a41` |
| 24 | `theorem` | [hessian_eq_covariance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/hessian-eq-covariance.md) | 252 | `result-track:03b9b40488c496c57c81e25074fa56946093ffd48329241fc25cf4171f4ccbf9` |
| 25 | `theorem` | [hessian_diagonal_eq_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/hessian-diagonal-eq-variance.md) | 259 | `result-track:709cbb2484049ea230fe2c86416a5978167cec5660118e87a2a41a9666bfd25b` |
| 26 | `theorem` | [hessian_covariance_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/hessian-covariance-nonnegative.md) | 268 | `result-track:11b0b89c1d6865241fd96471bd0de539e9d2400906e40036ec56cabbdcd107c3` |
| 27 | `theorem` | [visible_iff_positive_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/visible-iff-positive-variance.md) | 275 | `result-track:4adf12e3b979cfe12883d54ab0a8831de4886561e38c5767b82b9860c4f10804` |
| 28 | `theorem` | [isNull_iff_zero_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceEdition1.lean/declarations/isnull-iff-zero-variance.md) | 286 | `result-track:7b41ded00a2df7abcc0dd8bbc42a13991f9fe5b549c327e5502bc2e8fd21c545` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5165d2c4854302268e190c641e07641f2ae27b0322a088f853bb4e0c1235b67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante0d9b09e9cf6b9e3ad33e39be037b65f669c321138b178a9afa960a51a1a8208.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante0d9b09e9cf6b9e3ad33e39be037b65f669c321138b178a9afa960a51a1a8208.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
