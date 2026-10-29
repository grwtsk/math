# Verification target: GRWTSK.NumberTheory.Zeta.CompletedQuotientSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0aa9834d448278092a22d2e5e36ac8c9be5eb96f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/CompletedQuotientSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0aa9834d448278092a22d2e5e36ac8c9be5eb96f`.

Source path: `GRWTSK/NumberTheory/Zeta/CompletedQuotientSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/CompletedQuotientSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.LinearAlgebra.Matrix.ToeplitzHankel`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SublinearDyadic.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.NormedSpace.SimilarityReconstruction`](../../../../../../FunctionalAnalysis/SimilarityReconstruction.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/xi.md) | 21 | `declaration-track:ded0b99045274dab2beb518feb75733d356cc6b3464b230aa4772c09fc9f2452` |
| 2 | `theorem` | [xi_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/xi-zero.md) | 23 | `result-track:1f95ae6c42389846beb60014177f6d7ef40d70dbfd5b4310ae3276c1ffd99aaa` |
| 3 | `theorem` | [xi_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/xi-one.md) | 24 | `result-track:e64817711a2dd2c9e7383a0f218ad3c93c89af78ff55a12a0a4e51481564aed5` |
| 4 | `theorem` | [differentiable_xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/differentiable-xi.md) | 26 | `result-track:0b74a1a8f1f8e583212ebe8df0b7f9173e85d30f36f5646def16f67202b1227a` |
| 5 | `theorem` | [xi_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/xi-one-sub.md) | 31 | `result-track:b0bbb0653189463c5691a76ff59de13ac20bcdd8c89b59b1bd244d8698f91717` |
| 6 | `theorem` | [xi_eq_completed](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/xi-eq-completed.md) | 35 | `result-track:689af5fce0a1da8947d391d924dec7aa3f4f8c20bf2abdb0982d510139b810a2` |
| 7 | `def` | [spectralSource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/spectralsource.md) | 43 | `declaration-track:8d5187bc80c331181c8fdf00749f7dc39717496e12c96016d6f94f04a1f48c51` |
| 8 | `def` | [denominator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/denominator.md) | 44 | `declaration-track:3112af5499260a451d6185cc605b1483a430b2e9a507804c501331eb464a37a5` |
| 9 | `def` | [companion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/companion.md) | 45 | `declaration-track:cd2fcdf1d83931548567e514d1ee0c059001c0378e69988f3470ad972f141e70` |
| 10 | `def` | [cayley](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/cayley.md) | 46 | `declaration-track:d856b2ab71496292a6f4af3516924b7951439422538ca184488ef0f5ccc9bc86` |
| 11 | `def` | [quotient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/quotient.md) | 47 | `declaration-track:8ba7d2ae3954284c22132e6fcb7ec3bf7132064aa4576910877d55d13e4f9fc8` |
| 12 | `def` | [coefficient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/coefficient.md) | 51 | `declaration-track:7269304b0af9196ead97749b69849dc1f03024c705416b4f103fcce63c1e94d7` |
| 13 | `def` | [sourceToeplitz](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/sourcetoeplitz.md) | 54 | `declaration-track:f6f33ad27ac3a8a5560da7768965e30e63cc70542420ded8cd410e5bb1bbfb6e` |
| 14 | `def` | [sourceHankel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/sourcehankel.md) | 55 | `declaration-track:79ea3b43d528ef34d463025fd4a653e14b683dbbe2caf2e0d2d9e0ec6077009a` |
| 15 | `def` | [sourceSize](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/sourcesize.md) | 57 | `declaration-track:b5e0dbd073ddc5a956d4713517c842c8a14ca5faa5b58f8a3cf5a3c0a84bde66` |
| 16 | `def` | [relativeHankel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/relativehankel.md) | 58 | `declaration-track:662572e915c6d726f3bd6b9a1a13514a01eace635edf98ceccdd41115fb32517` |
| 17 | `theorem` | [sourceSize_ge_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/sourcesize-ge-one.md) | 60 | `result-track:2d1bf2faece39f1f64b366d6713650b27aeb060ebe3c26432f7ba10509576f50` |
| 18 | `theorem` | [relativeHankel_nonnegative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/relativehankel-nonnegative.md) | 64 | `result-track:15f317c4915a50383eb556bff5af80a3296a9af4cc8ac32bc9d80159e4111a74` |
| 19 | `structure` | [SectionNormLaws](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/sectionnormlaws.md) | 70 | `declaration-track:9ce565ea7ae31858619e008fa5c5c5a2a401d71978ab3101972ef509b649620e` |
| 20 | `def` | [AnalyticReturnStatement](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/analyticreturnstatement.md) | 76 | `declaration-track:a1bb828caa9956caf42e6763fc34ade38d5ac2a0e5d0ef15336dfeec4b409884` |
| 21 | `structure` | [TensorFamilyBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/tensorfamilybudget.md) | 82 | `declaration-track:90e7a64788cddda7d04c669e8ca38bb1e0eb3eab1c3dae1d35a82be7b5d3129c` |
| 22 | `theorem` | [tensorFamilyBudget_returns_growth](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/tensorfamilybudget-returns-growth.md) | 95 | `result-track:fa40fc54b2265163c5482fb3cec9238a51c11160d6f9b12ca043ae42b710a2c7` |
| 23 | `theorem` | [riemannHypothesis_of_supplied_return](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSourceHistoricalSourceEdition2.lean/declarations/riemannhypothesis-of-supplied-return.md) | 105 | `result-track:5d731260d081bb88127ac15c3004bdf222543fe17bb66a54667cc42636c2cbf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6278cb5aa0f1af7098e5f3c938ad786f8cfb3754e50c8f88ed0ceb17654d81cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/CompletedQuotientSource.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/CompletedQuotientSource.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
