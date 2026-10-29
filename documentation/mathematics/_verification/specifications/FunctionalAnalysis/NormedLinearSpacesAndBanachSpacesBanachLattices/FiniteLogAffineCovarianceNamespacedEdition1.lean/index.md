# Verification target: Finite Log Affine Covariance Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7179b53480ecba3a966c5ce7a9e636c614cfbc33",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7179b53480ecba3a966c5ce7a9e636c614cfbc33`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AffineReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLogAffineFamily](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/finitelogaffinefamily.md) | 62 | `declaration-track:b4971a9fec73574830207fbee8c0a65b37e5db1b618f8ddb669f4b0545495d75` |
| 2 | `def` | [unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/unnormalizedweight.md) | 76 | `declaration-track:cf30eab5dee30ecd35eec560a34f4e307c5f44c4dd5afa6491282b9d00e4ce33` |
| 3 | `theorem` | [unnormalizedWeight_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/unnormalizedweight-pos.md) | 80 | `result-track:ca8e91547217da19863a9c0042c79b99de650085704aa93d4ff9999e884a6d5c` |
| 4 | `def` | [partition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/partition.md) | 85 | `declaration-track:ab736bede6e7c01f65565734d5ee2a6fffc396ec7f62694310996f418948424a` |
| 5 | `theorem` | [partition_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/partition-pos.md) | 89 | `result-track:4e811277606ff7ff8a630b94f453029c7c7a181eaaa8f89e26d570e795663160` |
| 6 | `def` | [logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/logpartition.md) | 97 | `declaration-track:b0fb01987b7b9e56dd4e4095da6b26f4e39de521051cbc49ab3d0099f09b4e11` |
| 7 | `theorem` | [exp_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/exp-logpartition.md) | 101 | `result-track:38441656c24b5f2b9f920e6108d23f9f59523c10dd8c6a1a770a2fa5794ab5cb` |
| 8 | `def` | [probability](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/probability.md) | 106 | `declaration-track:2c907052b8aac2660d3cf054dbe9d50373b415f86ead7ea0fbcbb4ca4b17aded` |
| 9 | `theorem` | [probability_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/probability-pos.md) | 110 | `result-track:c4a95cf21ef5ccf18a17b8770f59d4c24ddc49a81352dd5f47f5f029aae85c14` |
| 10 | `theorem` | [probability_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/probability-nonnegative.md) | 115 | `result-track:eb87d3cb28cff4285aa4750049c5c1842cda9e3256cde3c55b91587d7abb2685` |
| 11 | `theorem` | [probability_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/probability-sum.md) | 120 | `result-track:d032dd82d92c42c9e7fdf0a552309372bb55884d448274516db61b16460f35db` |
| 12 | `def` | [centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/centroid.md) | 129 | `declaration-track:27e978a5631fd1a197261ae0440fe53c99398a66e427845ba37f13244b1e75bb` |
| 13 | `theorem` | [centroid_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/centroid-apply.md) | 133 | `result-track:b1a0a06bc143814459cad6dc5794bfd68276d03abaa85f6a223cb8e69a2e8d8d` |
| 14 | `def` | [centeredStatistic](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/centeredstatistic.md) | 140 | `declaration-track:a984949456c76fd31aa164b3747bc774ecd858522286e37949fb891885fedd27` |
| 15 | `theorem` | [centeredStatistic_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/centeredstatistic-apply.md) | 144 | `result-track:0c59f6a2fc68fc14ab9abe46b51ad187ae27460aa0b86e5c4b7f04a6a4b0cfb2` |
| 16 | `def` | [covarianceForm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/covarianceform.md) | 150 | `declaration-track:ea211ad5d4e8ab76d62f4d3355342c87a84ab4991ee1b898ab5884a8425960d1` |
| 17 | `theorem` | [covarianceForm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/covarianceform-apply.md) | 195 | `result-track:b686f97f47366e49b096f2712d8efda62a47b8e502f09cdceb7d7313cca7e64f` |
| 18 | `theorem` | [covarianceForm_diagonal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/covarianceform-diagonal.md) | 204 | `result-track:e3ad871bb8c75e2e4c9769fbcc7bd09e57bd50454ef72892f56e172e5cd5f98e` |
| 19 | `theorem` | [covariance_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/covariance-nonnegative.md) | 215 | `result-track:44b4824e5c49372cbef172bbf972029b18f9650a6a2b00f0058508595fc4c98f` |
| 20 | `structure` | [FiniteLogAffineCovarianceRealization](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/finitelogaffinecovariancerealization.md) | 226 | `declaration-track:d07a4cf313cd4d137eb99dd9bc1390089a3cc01f6f3b810abc1ea69940d26169` |
| 21 | `theorem` | [potential_realized_as_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/potential-realized-as-logpartition.md) | 245 | `result-track:f5c33b450d94f7cb47418b01b4bbd95000a6d83f8d5835293a9a46b73d1c5fa9` |
| 22 | `theorem` | [gradient_realized_as_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/gradient-realized-as-centroid.md) | 250 | `result-track:e94bf1e93b5b67de745e5830f60db18d14bdcc9cf7e1ad818edffafe67b50cd8` |
| 23 | `theorem` | [geometryAt_eq_covariance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/geometryat-eq-covariance.md) | 255 | `result-track:35b471416265af4aaade20d51bb8637aab7536cb17c64af9e6f07349b7958e82` |
| 24 | `theorem` | [hessian_eq_covariance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/hessian-eq-covariance.md) | 260 | `result-track:571d9a2135dd2fbb582718b4cb633d13a27b96fce7193786851e5c20a57ca03e` |
| 25 | `theorem` | [hessian_diagonal_eq_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/hessian-diagonal-eq-variance.md) | 267 | `result-track:8922830a40f9119b1daa13d23f9814bb4a68216617bac3bf6a6de00e7946fab3` |
| 26 | `theorem` | [hessian_covariance_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/hessian-covariance-nonnegative.md) | 276 | `result-track:d6f841459e9199733411d00f750f6b7d81c860cbc6a11d3dc02243205ec0e4da` |
| 27 | `theorem` | [visible_iff_positive_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/visible-iff-positive-variance.md) | 283 | `result-track:c53aab0c8bae995b3b34034be0b463ba9e3786349e960e5d7da80e6fba219954` |
| 28 | `theorem` | [isNull_iff_zero_variance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovarianceNamespacedEdition1.lean/declarations/isnull-iff-zero-variance.md) | 294 | `result-track:fe6a56471d4726bd955ee2266807d135ebff77248cf02d60fa15b3b4a1d85c1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23d77d677ccdf7d23e610dbf90a5be9fdeca3edf085d73bb296fcc6f2d7bd9be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
