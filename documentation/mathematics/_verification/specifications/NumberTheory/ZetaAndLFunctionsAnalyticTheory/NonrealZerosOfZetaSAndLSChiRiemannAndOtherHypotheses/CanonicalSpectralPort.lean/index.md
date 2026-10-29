# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9fecf390b8ead343bdeb8a605af87b61035988c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9fecf390b8ead343bdeb8a605af87b61035988c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalTentAtomStage.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerQuadraticPort.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralCorrection](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/spectralcorrection.md) | 48 | `declaration-track:36453e0666aa98817a99b267f09af855c8f5229789f866c4541c7aacefee25cc` |
| 2 | `theorem` | [spectralCorrection_eq_squareTentMangoldt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/spectralcorrection-eq-squaretentmangoldt.md) | 55 | `result-track:b135095f802421cebd4316c471ae27315fba839e7c98e782db87c2279350406a` |
| 3 | `theorem` | [spectralCorrection_im_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/spectralcorrection-im-zero.md) | 63 | `result-track:c6c8a9b264e825c7a9280b15eb8a4504503c37247a4562e6507863b830d28cf2` |
| 4 | `def` | [spectralCorrectionReal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/spectralcorrectionreal.md) | 70 | `declaration-track:2b7fe3782cf69c91f341ff8280e37a72e1a187779a069306fe541012a4257c44` |
| 5 | `theorem` | [spectralCorrectionReal_eq_squareTentMangoldt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/spectralcorrectionreal-eq-squaretentmangoldt.md) | 73 | `result-track:8c0f6b0aa48fe056b34800419905e2f294ea07bb4c6545e3cbbc82bc080ba765` |
| 6 | `theorem` | [stageEnergy_eq_spectralCorrectionReal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/stageenergy-eq-spectralcorrectionreal.md) | 81 | `result-track:74ca43ba604d7d94c9433e6e47906ca51d4beda86dc9573708937461dc7d86a7` |
| 7 | `theorem` | [spectralCorrectionReal_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/spectralcorrectionreal-nonneg.md) | 91 | `result-track:399b6a71297d43beab11e7368e4e29dbb314761385ab4392e533932dc82f51df` |
| 8 | `def` | [canonicalStage](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/canonicalstage.md) | 99 | `declaration-track:0ea6b284fca80b9d97e5224c0f5c52dd28f201db495a3107665cc177c1dd3c1a` |
| 9 | `def` | [canonicalAmplitude](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/canonicalamplitude.md) | 103 | `declaration-track:a1b774399dfe3858db1ecf1960ee48dddb94d28568ab556f534798b2e8e6acfa` |
| 10 | `def` | [canonicalCorrection](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/canonicalcorrection.md) | 107 | `declaration-track:2741c79d49517f01c1dcf836aba338dd3d485606a84c276afd1feb5a56e11559` |
| 11 | `theorem` | [canonicalStageEnergy_eq_correction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/canonicalstageenergy-eq-correction.md) | 110 | `result-track:367bb7339ade05ac710d71336f6bcb18105e013ab253726f1b416c66f1ca54a5` |
| 12 | `structure` | [CanonicalQuarticComparison](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/canonicalquarticcomparison.md) | 119 | `declaration-track:0e9d911d0138c2bc2d27823654a19e15cbcbe288e6ca60a060f70f70519c24b4` |
| 13 | `def` | [toQuarticExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/toquarticextraction.md) | 134 | `declaration-track:918c4b75806b5ad0e516ee3e536c882a547d7b0677071ba97dc179c7277380cc` |
| 14 | `theorem` | [horizontal_displacement_eq_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/horizontal-displacement-eq-zero.md) | 152 | `result-track:c94d469def8c51eefb5f5b79942ccd5711f79213e407799659d464e022c4db43` |
| 15 | `theorem` | [riemannHypothesis_of_canonicalSpectralComparison](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalSpectralPort.lean/declarations/riemannhypothesis-of-canonicalspectralcomparison.md) | 163 | `result-track:69f9ae8531007d2e2d266a44c9c9298a337b4325fef17acc94243737cb4692fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c189afdf73129cb288d393f224e7d5579cc993ea45add2ec276ac92de277ca68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
