# Verification target: Paired Tail V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35bd3dd8058871d5e8e34b491869e1b1497f0b95",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35bd3dd8058871d5e8e34b491869e1b1497f0b95`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeSurvival](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival.md) | 31 | `declaration-track:17a4ade17dd5d8f9ca319f7af35d4cf574e01f83365cd5a0ecc4f2324f5e0b18` |
| 2 | `def` | [pairedTailTest](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest.md) | 35 | `declaration-track:1468b42f9639c52afd7c69ff9a32c652e96c51085fb9e94efe3ec134bdcadb97` |
| 3 | `def` | [negativeTimeMean](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativetimemean.md) | 38 | `declaration-track:c68e05f0621f794bad315462c5ac9a67b330d3128947bf62d97a7cf5a69025c8` |
| 4 | `theorem` | [negativeSurvival_hasDerivAt](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-hasderivat.md) | 41 | `result-track:1feeb37be230992f9a3fec96cfc642492d0270eac59e44aec591eba0e8ba2f93` |
| 5 | `theorem` | [negativeSurvival_deriv](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-deriv.md) | 47 | `result-track:f2486050797fcc55059af001f95dd370e93b5d06b6aca02e317ba17228890ba6` |
| 6 | `theorem` | [negativeSurvival_contDiff](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-contdiff.md) | 52 | `result-track:8b92a84a62785cdad6b412fd2aedb84fd836f0dbb988ff7a46d7f5ad62e612f0` |
| 7 | `theorem` | [negativeSurvival_continuous](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-continuous.md) | 63 | `result-track:325da0d339429b6c11ae7cb2d987cfc44570dc76cdfc82c710b140b053eec0bf` |
| 8 | `theorem` | [negativeSurvival_at_zero](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-at-zero.md) | 66 | `result-track:3ad585f98597e23316d9bb83395eecd04f1c605ce3ce91ffe2d2aa46287348c6` |
| 9 | `theorem` | [negativeSurvival_at_upper](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-at-upper.md) | 70 | `result-track:1d4fdcfb32298177a55d3b8855290bec6775bd2289420c9225d4e8810012f244` |
| 10 | `theorem` | [negativeSurvival_antitone](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-antitone.md) | 74 | `result-track:ba7c6b891d82373fa5cbf6b3ff51cb4881dd5caf1160a2b98a91c76e2ad4d31d` |
| 11 | `theorem` | [negativeSurvival_nonneg](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-nonneg.md) | 85 | `result-track:42438e0cd1f31c31fe406b950d1905c899bb7fc204303bdd81a88b9e39f6d37a` |
| 12 | `theorem` | [negativeSurvival_le_one](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-le-one.md) | 90 | `result-track:e6c929916d7a04ccaeb505b2c99cbeea4e8aa0594615566d36ede19e338c7f5d` |
| 13 | `theorem` | [pairedTailTest_hasDerivAt](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-hasderivat.md) | 95 | `result-track:06c933eae4e44825997d497cfebbea0055f4cb36a6458697b251f3a9c7a977e2` |
| 14 | `theorem` | [pairedTailTest_deriv](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-deriv.md) | 107 | `result-track:61582333df76f3e1dc2eb6bb49e0663ed76f19eb2e63d1a05d139dd01baa1a05` |
| 15 | `theorem` | [pairedTailTest_contDiff](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-contdiff.md) | 112 | `result-track:31d5405ae1e3d4a7bd7cd6aeee260682cfdc7dce24a8817f5997573c83d80417` |
| 16 | `theorem` | [pairedTailTest_continuous](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-continuous.md) | 116 | `result-track:f1ba31b3c5f90b3bfe9d4537ac6edb179e3b9fa013c156a49a551715e654c0ca` |
| 17 | `theorem` | [pairedTailTest_at_zero](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-at-zero.md) | 119 | `result-track:476f340d5511a9b2446b010df97cb485a50562387840f847cb1f447ebc9fc0e9` |
| 18 | `theorem` | [pairedTailTest_at_upper](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-at-upper.md) | 122 | `result-track:627985884a0647248e61ea6bd8c79084d31d6be36cb37a6fdedb3ee1e052b3af` |
| 19 | `theorem` | [negativeTimeMean_nonneg](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativetimemean-nonneg.md) | 126 | `result-track:1db13e1eace88626160f181f1854c8bf46b9574285d731e60fc04599830b3f01` |
| 20 | `theorem` | [negativeTimeMean_le_upper](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativetimemean-le-upper.md) | 131 | `result-track:12170c4609808bd2d3a482af4faba16f41208c79f8419c5f31f8bad4968b032d` |
| 21 | `theorem` | [negativeSurvival_integral_eq_timeMean](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/negativesurvival-integral-eq-timemean.md) | 141 | `result-track:f6da822e0d4523f181751d47164da593a21ac85ed2daf75e6d269d2d1ac08d65` |
| 22 | `theorem` | [pairedTailTest_integral_eq](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-integral-eq.md) | 161 | `result-track:e6e0f2bbc6cccb630c0c1572546f475247b0b339ca7a8642d9660dba994dc3de` |
| 23 | `theorem` | [pairedTailTest_deriv_abs](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-deriv-abs.md) | 173 | `result-track:df5f5b2e0cc01614e8947c53dba169e8f8a917d42cdda0fe678cd729e66aabba` |
| 24 | `theorem` | [pairedTailTest_variation_eq](../../../../MeasureAndIntegration/PairedTailV1PrebytesNamespaced.lean/declarations/pairedtailtest-variation-eq.md) | 188 | `result-track:dcffb1d75555b28d18f0550e2ad0c458229d42167450c2c811fc0d1b8563d1ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=215f89f419b1d6ebd042d5b6cb65751398c226b7cc11257982515a3b71b53b67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
