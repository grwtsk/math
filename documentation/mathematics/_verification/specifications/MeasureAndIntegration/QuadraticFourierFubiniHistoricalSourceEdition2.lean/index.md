# Verification target: GRWTSK.MeasureTheory.Integral.QuadraticFourierFubini

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/MeasureTheory/Integral/QuadraticFourierFubini.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f`.

Source path: `GRWTSK/MeasureTheory/Integral/QuadraticFourierFubini.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/MeasureTheory/Integral/QuadraticFourierFubini.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phase](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/phase.md) | 10 | `declaration-track:cdb5b860e2e7d2e36852fee717fe3660ea9d02c693583a2568c3129c112d1df9` |
| 2 | `def` | [triple](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/triple.md) | 13 | `declaration-track:bb6ca991d791475295738e0e405534679042be2f37a12ec120ecbb062dd787a0` |
| 3 | `lemma` | [conjugate_integrable](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/conjugate-integrable.md) | 17 | `result-track:9e4c6e4fae044bf82d696ed68f2ec100165663f0c7a82433063e42bd75a4f987` |
| 4 | `lemma` | [phase_norm](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/phase-norm.md) | 25 | `result-track:a5aaf540a509d0710d0d11d2cefd523c0b7d6aba6430da8b13d2889c2c49a978` |
| 5 | `lemma` | [phase_norm_bound](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/phase-norm-bound.md) | 28 | `result-track:913b21f6d9189d804b58ad7acb284cc552ad9117967beb62fd8ad360c2d84305` |
| 6 | `lemma` | [triple_integrable](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/triple-integrable.md) | 35 | `result-track:cf5204011ba81809e08dc734b6b26695aa5954ca38744983e4638c912ab5447d` |
| 7 | `lemma` | [density_eq_time_integral](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/density-eq-time-integral.md) | 50 | `result-track:2c1103f0290fda8888302c38e1f623bcf3e8bc69126067ce9cea786ebc3f7a32` |
| 8 | `lemma` | [density_integrable](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/density-integrable.md) | 57 | `result-track:8c620ea82a712ace082f8f00242b9dacdb1635bbb8605a24c0d9b509fb5f6410` |
| 9 | `lemma` | [density_section_integrable](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/density-section-integrable.md) | 64 | `result-track:32284f94f8e4b909c22ed5e0d70403c0a1411c7dca5ff6d4d077361c18e7ef66` |
| 10 | `lemma` | [density_outer_integrable](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/density-outer-integrable.md) | 82 | `result-track:6ad36ab2bc989c416dd4173de0a1be08c88a137812d44f9d71534e091ef36f43` |
| 11 | `lemma` | [phase_factorization](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/phase-factorization.md) | 87 | `result-track:7f99b4f8211dde1ed433540ca354205cb404164fc5538e7020b60d516a35ab5b` |
| 12 | `lemma` | [frequency_product_return](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/frequency-product-return.md) | 103 | `result-track:9eda3b67a195dc9295ba524e62d717f6e51625667398880f41a1e11931adc241` |
| 13 | `theorem` | [density_double_return](../../../../MeasureAndIntegration/QuadraticFourierFubiniHistoricalSourceEdition2.lean/declarations/density-double-return.md) | 128 | `result-track:764e9198b9e4b79119e2df5f0d025256653d55fb72055afb7a3aa9b6848ce92a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64045655dd458190ffebc54b55dcecb7e7408488f3a5a66a1d0e518db3c89b11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/MeasureTheory/Integral/QuadraticFourierFubini.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrencefbb934072db26032aff2bbc9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
