# Verification target: Attempt02 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92b1f77df9fa1c5ffd22d266eb1e45a38ce218af",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92b1f77df9fa1c5ffd22d266eb1e45a38ce218af`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiLaplaceMellin` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZetaPoleCleared](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualzetapolecleared.md) | 20 | `declaration-track:4cadf6970366d6802eac5bab4e48114a99de60d8449cf4312cf8cc32d564ca18` |
| 2 | `def` | [actualContinuousSevenPoleNumerator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualcontinuoussevenpolenumerator.md) | 24 | `declaration-track:6d2cbcc9ae9e939ece016fdf5d6562eb42f6ae67f5790b3750f995a76689d4bc` |
| 3 | `def` | [actualContinuousSevenPoleRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization.md) | 27 | `declaration-track:2fa5b5131843651c4d7aa64ff951936951bb8d5c4b27656ca730342a629b6c6f` |
| 4 | `def` | [actualXiSevenReturn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualxisevenreturn.md) | 31 | `declaration-track:6881f74ebad499e89aba61a77908311631c470cb78798df871b6289fda9069db` |
| 5 | `def` | [actualXiSevenReturnRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualxisevenreturnregularization.md) | 37 | `declaration-track:9c976d6e71651d8f082b7fda682b0df652fc8103db83d84b644a9c61bb702a02` |
| 6 | `theorem` | [actualZetaPoleCleared_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualzetapolecleared-at-one.md) | 44 | `result-track:af0c3c4a2fd7961547611bc13e63220be6419711d199cce56b23aee923e88882` |
| 7 | `theorem` | [actualZetaPoleCleared_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualzetapolecleared-eq.md) | 48 | `result-track:6b29e279cb207c64b9122ec4530ca3fe00daca271b4a0edf6bdeb046d50ff5dd` |
| 8 | `theorem` | [actualZetaPoleCleared_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualzetapolecleared-analyticat-one.md) | 61 | `result-track:001559c808696405f858902e47dd311b5ed0602a556e6066628fa80bc10885ea` |
| 9 | `theorem` | [numerator_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/numerator-differentiable.md) | 69 | `result-track:c518bade83058042fe68ac860a88064c5bcd53c6d4260e83a32e866d82e911f9` |
| 10 | `theorem` | [actualContinuousSevenPoleNumerator_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualcontinuoussevenpolenumerator-at-one.md) | 75 | `result-track:31924490cebfd1a81d65d18165e5ba7f446d31c4020d6208637c45332d4e68bf` |
| 11 | `theorem` | [actualContinuousSevenPoleRegularization_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization-analyticat-one.md) | 79 | `result-track:665066c5aa58418d71fc468108a007c1d7bb5669984244046958c151448aa4b2` |
| 12 | `theorem` | [seven_power_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/seven-power-hasderivat.md) | 85 | `result-track:f23a83286a35c01c911298df6b9d230c63ae705ce9f59e2aedb835153310ccc4` |
| 13 | `theorem` | [actualContinuousSevenPoleRegularization_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization-at-one.md) | 95 | `result-track:600d7868e272b0c5d40068f99dc4abbb4de4e703ec97b1411eb27e8217dd1b84` |
| 14 | `theorem` | [poleCleared_deriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/polecleared-deriv.md) | 105 | `result-track:18a30aa08a939f168ca04d43fcfbdb0d2e7902e1c673b09a2833f3698b1a8c41` |
| 15 | `theorem` | [actualZeta_logDerivative_pole_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualzeta-logderivative-pole-identity.md) | 116 | `result-track:687a0233401a2a08ad4a51205a5e3cdab83013bcda4c3d22c249e660b9bd34db` |
| 16 | `theorem` | [closedHead_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/closedhead-analyticat.md) | 124 | `result-track:8746075b7acd71b25a7514101ecc7e5765b3e9eb8d0f2047331c45014b7335cb` |
| 17 | `theorem` | [actualXiSevenReturnRegularization_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualxisevenreturnregularization-analyticat-one.md) | 135 | `result-track:2e975a147b963c6e59c6f32f843c6b417a108e08ab96676df11295a43c2e1494` |
| 18 | `theorem` | [actualXiSevenReturn_eq_regularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt02SourceEdition1.lean/declarations/actualxisevenreturn-eq-regularization.md) | 146 | `result-track:abbe0a37941e59da7918f4f90a71652b903d5c0be4177eefc50e4d2c0f58d97e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3e422875cf4a3beafede4595e3bcbdb385aec5510688c434728367770f57402 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Attempt02/Variant71f43494860af37c916942f2913e7be2bf9d5f4f0781223ac66a6abbf9d2ff99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
