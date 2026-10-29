# Verification target: Restricted Mixed Pairing Fixtures Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65aa7d5e70bf55c65c6f0a4df6a1146ef7f86991",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65aa7d5e70bf55c65c6f0a4df6a1146ef7f86991`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceRestrictedMixedPairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [empty_region_zero](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/empty-region-zero.md) | 33 | `result-track:1e2640878224c63740c40e452e947bbf2ecb98cfec465849f37003d722a1ec6d` |
| 2 | `theorem` | [whole_region_literal_kernel](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/whole-region-literal-kernel.md) | 36 | `result-track:e5bf2336303173cbcab01d71520a1b66607fdc99d00e40c7ef750886610942ec` |
| 3 | `theorem` | [whole_same_source_positive](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/whole-same-source-positive.md) | 42 | `result-track:dba25656ea87e64c394a92f2e6f38c5e324d04cfb6b3e37621f2a0dadcacde09` |
| 4 | `theorem` | [opposite_coefficient_negative](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/opposite-coefficient-negative.md) | 49 | `result-track:0971fb9c3efa8340dc40041b4cc51b299404cf3934aede24b2ce67c93a2b1193` |
| 5 | `theorem` | [arbitrary_region_is_not_whole](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/arbitrary-region-is-not-whole.md) | 54 | `result-track:f0a09a272b46809c7f891c01c7da7308305e8f76e59f05445e72036369c47517` |
| 6 | `theorem` | [empty_region_is_not_full_source_kernel](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/empty-region-is-not-full-source-kernel.md) | 59 | `result-track:8026bd81850d6d9fc9939e52f5db2562652af795fb92314194f1f738c6fb8b52` |
| 7 | `theorem` | [time_and_spatial_strip_differ](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/time-and-spatial-strip-differ.md) | 68 | `result-track:c9d027760318610580f14d70431313c2991998ce162a4e3ffd1fbb4990f96d2c` |
| 8 | `theorem` | [time_point_not_in_spatial_strip](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/time-point-not-in-spatial-strip.md) | 75 | `result-track:1f201f5a3ea2ef4f60fd96090ccc5350ee4b3037128bd8a78c8b0f447e15cdfa` |
| 9 | `theorem` | [spatial_point_not_in_time_strip](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/spatial-point-not-in-time-strip.md) | 79 | `result-track:bc949bebff828e50ecd4d3cc8987fce3baf87a27d2e679105aef190a4eb27b13` |
| 10 | `theorem` | [signed_total_zero](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/signed-total-zero.md) | 85 | `result-track:a6b8f9a9af6db5a9f84f2bb8c6b346b127fcfee7c421fa9276e52b23ec9d52f8` |
| 11 | `theorem` | [signed_subintegral_nonzero](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/signed-subintegral-nonzero.md) | 90 | `result-track:ffef1000946e2360a565b6c7007360ad45df3b99d08bd1de7a978070d446259c` |
| 12 | `theorem` | [signed_total_does_not_bound_subintegral](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/signed-total-does-not-bound-subintegral.md) | 95 | `result-track:ba9e3929bb9e17795f48e74812d9740211e9a8641a40bea279bf343070dc2843` |
| 13 | `theorem` | [arbitrary_spatial_region_bound](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/arbitrary-spatial-region-bound.md) | 100 | `result-track:2880143c2ac5517df91450c2a38e3a9be864954757974ff3150f4a916531efc8` |
| 14 | `theorem` | [arithmetic_scalar_cannot_be_dropped](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/arithmetic-scalar-cannot-be-dropped.md) | 105 | `result-track:25f6a1e4201e136824542e02d6232fcf16716b9d859bb26c79cf6b564bade382` |
| 15 | `theorem` | [coefficient_free_bound_false](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/coefficient-free-bound-false.md) | 112 | `result-track:8f8b0a8babae0742d61a3286364f97da72425b00dd8f5aabf35f27885101f1c7` |
| 16 | `theorem` | [source_support_forces_short_time](../../../../MeasureAndIntegration/RestrictedMixedPairingFixturesNamespaced.lean/declarations/source-support-forces-short-time.md) | 122 | `result-track:c61e896cfd8e78e2e3af8a7b6c5454be305914363e2e1925df2496df4aaae2e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4dbde81c30a4c0f4c55a58f898df6ef8ce89ef1eb6eb0cf26ba85af2f2819c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
