# Verification target: Completed Quotient Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4f740dd681e865af1ce6146ed95d8880c130408",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4f740dd681e865af1ce6146ed95d8880c130408`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ToeplitzHankel`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankel.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SublinearDyadic.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.NormedSpace.SimilarityReconstruction`](../../../../../../FunctionalAnalysis/SimilarityReconstruction.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/xi.md) | 21 | `declaration-track:bf7ea91290078170cfbdb552c00736619bf1abfed751cd2e9ec83bd6e46a4bd6` |
| 2 | `theorem` | [xi_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/xi-zero.md) | 23 | `result-track:729f93ae09abd6dc824da7a5c10fe1257d021856f76b89b8f4a1d126945ba62a` |
| 3 | `theorem` | [xi_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/xi-one.md) | 24 | `result-track:e80d646692717e3e69261063f3d511f0b34960bbfe14000b614c454a9fc8b51e` |
| 4 | `theorem` | [differentiable_xi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/differentiable-xi.md) | 26 | `result-track:a5ee8c48561e64a3ef596cd003746233ead2d2d6d383126cd410258d522bb789` |
| 5 | `theorem` | [xi_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/xi-one-sub.md) | 31 | `result-track:6c2aef6c843a3d509bb98449f268176cf3d746aaf208608118d15b22c7ac9504` |
| 6 | `theorem` | [xi_eq_completed](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/xi-eq-completed.md) | 35 | `result-track:287fba7f5fa9c620600acf158d4853f4164131043c17f797668b79c194cf0764` |
| 7 | `def` | [spectralSource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/spectralsource.md) | 43 | `declaration-track:5efb4b07f13a6119c32143921d33266388ed33bb076e01f8e603aeb251297dc0` |
| 8 | `def` | [denominator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/denominator.md) | 44 | `declaration-track:67969ef5a59bc5f2745a6a59d3ecbaa6f88cb87b0f803f015b085e701e030cbb` |
| 9 | `def` | [companion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/companion.md) | 45 | `declaration-track:03113ba61e80c7cddd5f02a7b35b9347355e5be6b7e1f59ae1f138f30ccc36ee` |
| 10 | `def` | [cayley](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/cayley.md) | 46 | `declaration-track:536c9468d97d8ad3506a09729cd68e5fd030e505fe1b9a0f8335f75ff51b6314` |
| 11 | `def` | [quotient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/quotient.md) | 47 | `declaration-track:304b18ed9a809ffaa131914bb7c4bce8aa00f66e1f5e99bc0b1ea6575185fd24` |
| 12 | `def` | [coefficient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/coefficient.md) | 51 | `declaration-track:d76b15a1bd4cde81c76e6bdc2d2f5290046fa1cc32266162e062259a30e8f51b` |
| 13 | `def` | [sourceToeplitz](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/sourcetoeplitz.md) | 54 | `declaration-track:2578f2708741e281e215f91269dc8aebaf840958737431c9d89c1ad64ab19cbf` |
| 14 | `def` | [sourceHankel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/sourcehankel.md) | 55 | `declaration-track:8a44e7f303acd40b66b814bde5842c3d9fd332bebff4c6f71d1d57f10a607da4` |
| 15 | `def` | [sourceSize](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/sourcesize.md) | 57 | `declaration-track:3ec6dd693f96894537406ef0e78a1a4937e3554d8332721a2dc4ac85ece3ad95` |
| 16 | `def` | [relativeHankel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/relativehankel.md) | 58 | `declaration-track:4a2fa8bc05448880c105a1d68dc751b9e5774698be1bf143446b66acfa8e80bb` |
| 17 | `theorem` | [sourceSize_ge_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/sourcesize-ge-one.md) | 60 | `result-track:e82ad85712cd751784035d6f2b8cb3dab93e5cf2bf46bb62f252a1e444ed24f9` |
| 18 | `theorem` | [relativeHankel_nonnegative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/relativehankel-nonnegative.md) | 64 | `result-track:f7bd40a3c30bb89b0607dd7bb9e30f69e5313948ee20f63ede32bcaad2a37c92` |
| 19 | `structure` | [SectionNormLaws](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/sectionnormlaws.md) | 70 | `declaration-track:c021f5f195819162451419267c171f49bc613f57c163acab9c1b655d4cf5c617` |
| 20 | `def` | [AnalyticReturnStatement](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/analyticreturnstatement.md) | 76 | `declaration-track:a99d7507fc501bc69488459f754b4216791b8b09490899f56475027f9437b9d7` |
| 21 | `structure` | [TensorFamilyBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/tensorfamilybudget.md) | 82 | `declaration-track:508849d4ef50673b6c3cdf97c07830066bf0ab55ae4de2768902c1f806a3a5dc` |
| 22 | `theorem` | [tensorFamilyBudget_returns_growth](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/tensorfamilybudget-returns-growth.md) | 95 | `result-track:c60b455e9c6b0a6208a83833bf01ca64f6432eac0de27242aa576384c152506a` |
| 23 | `theorem` | [riemannHypothesis_of_supplied_return](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean/declarations/riemannhypothesis-of-supplied-return.md) | 105 | `result-track:c08e0b28b989e89cfb069eff864103af4a0f81807cf1e60e8af126a4fa61be30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f96fcea4310b9b7d4de99aa853f65a8555f8498e184d532ad1a74e0923ce385 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
