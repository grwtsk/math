# Verification target: GRWTSK.NumberTheory.Zeta.PoleRemovedSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8959749460d0259144bbcd780f268e3898184bbb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8959749460d0259144bbcd780f268e3898184bbb`.

Source path: `GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/PoleRemovedSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfPlane](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/halfplane.md) | 27 | `declaration-track:8ef896b45d38bd635b26955b1d9c37bbe6b55e8a466be9b2bb4523117801d6ae` |
| 2 | `def` | [numerator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/numerator.md) | 29 | `declaration-track:0a3566d987f43f15268f4855414ab2d3e5bd0b2b7705b09404f7454e8c26a3e4` |
| 3 | `def` | [denominator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/denominator.md) | 32 | `declaration-track:a76230dedb46d05c819cb36c392aa7f1b726bb7dd13a3b47742ed78f9046f553` |
| 4 | `def` | [poleRemoved](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/poleremoved.md) | 35 | `declaration-track:034a780cb5717fd4282ae871aa297d62c85dd0fdf71d173e3d24b8f9308b9d4a` |
| 5 | `theorem` | [halfPlane_open](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/halfplane-open.md) | 37 | `result-track:dceef4913f88ede2d1cb49c7535b0656ef8a8e0f5f6600258ffde4fd32158349` |
| 6 | `theorem` | [halfPlane_convex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/halfplane-convex.md) | 40 | `result-track:05648684bd01009cf1ccf35c8a7b76f7958da237fe87c3a7b6115278ac71b1fd` |
| 7 | `theorem` | [halfPlane_preconnected](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/halfplane-preconnected.md) | 55 | `result-track:65d71e747e32b28f09c964e0848103e75b92f35d7c50be0dc5988d34e1f044ba` |
| 8 | `theorem` | [one_mem_halfPlane](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/one-mem-halfplane.md) | 58 | `result-track:4c5882b52ec24b2c352de1edb9a1ffc2bbef5f58b537be7228e81e85339e32be` |
| 9 | `theorem` | [two_mem_halfPlane](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/two-mem-halfplane.md) | 59 | `result-track:edb9492c9483d2c5af5530b3d1ebf3398474c12b10528d842fcde5f85bdc4d0f` |
| 10 | `theorem` | [numerator_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/numerator-differentiable.md) | 61 | `result-track:6fb2b7c4ade2df998c263483858baf584d37f10c4e7d0c9e130747e33c7c7dce` |
| 11 | `theorem` | [numerator_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/numerator-one-sub.md) | 67 | `result-track:115a844759d0289f93217263574635e4ff83ef45952faf06aa8d192b847a4bcb` |
| 12 | `theorem` | [numerator_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/numerator-one.md) | 71 | `result-track:59df42d33a782b2e15c1e3d9fda1af3ee6eafa03d23cc8a4225ff141d98d95bb` |
| 13 | `theorem` | [numerator_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/numerator-zero.md) | 72 | `result-track:6e6b24dadcf206c2b0213a24533ad96765a1bdeeff2933df78a8b5712449368f` |
| 14 | `theorem` | [denominator_eq_classical](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/denominator-eq-classical.md) | 75 | `result-track:a1dd2e19202f6f96e5b9204b1a94f6835e08c54766480818ab374b331f7d6499` |
| 15 | `theorem` | [gammaArgument_avoids_poles](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/gammaargument-avoids-poles.md) | 85 | `result-track:39446a18443e05fbf8e78a1020f4077af19c8862b64b72d342152327aca0afa6` |
| 16 | `theorem` | [halfPlane_gammaArgument](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/halfplane-gammaargument.md) | 93 | `result-track:8a52f13231478d76a61d5a3b94e0dcd3fe75d78bc2cd7eac1b683d123b95d803` |
| 17 | `theorem` | [denominator_ne_zero_of_nontrivial](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/denominator-ne-zero-of-nontrivial.md) | 102 | `result-track:7f10f8f3308789af114da0be8a8c9283f06a93096dc3d299750dda21343deae5` |
| 18 | `theorem` | [denominator_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/denominator-ne-zero.md) | 108 | `result-track:ae199c49801a9db0acf72189680d253e9d3ecb88a599ae26e4f1d8a2b1458afb` |
| 19 | `theorem` | [denominator_differentiableAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/denominator-differentiableat.md) | 113 | `result-track:0b617cd12ace6dff37ba23a9c772371df939f04d11796e1049c1f4c74dd8a5d1` |
| 20 | `theorem` | [poleRemoved_differentiableOn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/poleremoved-differentiableon.md) | 123 | `result-track:a5694e60157d3c8ec2a38d3acb9f91fb93c73d6cc1b70568849420476569d357` |
| 21 | `theorem` | [poleRemoved_analyticOn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/poleremoved-analyticon.md) | 128 | `result-track:59b5148aa31ee7f76f7701db1ae1a79480684f6533b427b478400690f1f0d7dd` |
| 22 | `theorem` | [poleRemoved_eq_mul](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/poleremoved-eq-mul.md) | 132 | `result-track:cb31728dbbe0029116d48fc679aa40b6ca123efd268f554f52e13a657321c164` |
| 23 | `theorem` | [poleRemoved_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/poleremoved-one.md) | 143 | `result-track:acf18b714b2acd823bb605acb1a2893433b83fc1b8dc8076ce476743ced4634d` |
| 24 | `theorem` | [poleRemoved_deriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/poleremoved-deriv.md) | 154 | `result-track:6d6a590438ed4ab7fa645f94175b7543f6125f7a04d729a9e4b7721c436c535c` |
| 25 | `theorem` | [numerator_zero_of_nontrivial_zeta_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/numerator-zero-of-nontrivial-zeta-zero.md) | 166 | `result-track:95e5db0494558cebcbb0044154185615395413d85d8bfea9fcdc8b1f541e5c11` |
| 26 | `theorem` | [reflected_poleRemoved_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean/declarations/reflected-poleremoved-zero.md) | 174 | `result-track:36f509bdb6b908d1e9b51ce3c4bea5879918143b71eae64f8d1568183dddc5e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cdd8903dd5598cd1997dde79cf7426f1786d05400b406322b7baeee747cf949 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/PoleRemovedSource.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
