# Verification target: GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed9e15ed50b29bbb73ad0dc94db26c2be280f18c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ReciprocalZetaQuadraticKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed9e15ed50b29bbb73ad0dc94db26c2be280f18c`.

Source path: `GRWTSK/Analysis/Fourier/ReciprocalZetaQuadraticKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ReciprocalZetaQuadraticKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [timeKernel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/timekernel.md) | 16 | `declaration-track:b2de206dfcf9f3ad1c821820b82f36b59b500ca24f65806fca76581c0cb00927` |
| 2 | `def` | [density](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/density.md) | 20 | `declaration-track:ad15db7d369a8892fffe36ffb75989a02628d075a9e4f99dcaa24e9f4a2a7bac` |
| 3 | `def` | [kernelEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/kernelenergy.md) | 24 | `declaration-track:64cdd3072b883be2fcff50e382e44d122e5162cb3282af038946d039ab427ec7` |
| 4 | `def` | [head](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/head.md) | 27 | `declaration-track:40e0a7ba4fbb00ac07cd2226c8e7fee13522a8294ab8daaf9cb466d1dc5f8597` |
| 5 | `def` | [tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/tail.md) | 31 | `declaration-track:c7fd3b9ba01dd005f92ee09f737fa66f6004e9f6f0b4ae014484a0e50d2c24da` |
| 6 | `def` | [Identification](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/identification.md) | 33 | `declaration-track:11e47a7c5ee73824cfee9d63e15cf7af0384af7b1ae63f9ce3c98e7733baf221` |
| 7 | `def` | [TailBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/tailbudget.md) | 40 | `declaration-track:395c6eb538198743fbbbdac8d72a64d8a7eb82b29d2c659fe6aa5cde8a8bfc71` |
| 8 | `def` | [SignedHeadResidueBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/signedheadresiduebudget.md) | 43 | `declaration-track:1a796a9f7c303df712c9fc818bf9b90253c1fae68a820cd3101faf81528a846e` |
| 9 | `def` | [toDecomposition](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/todecomposition.md) | 47 | `declaration-track:6521970477a6ce5aee6063941bde027d89539f2a80bf8623938829c5c5a1cb3c` |
| 10 | `theorem` | [concrete_route_implies_literal_P04](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/concrete-route-implies-literal-p04.md) | 62 | `result-track:76ed0152525035c1c97d625e44bafbe70c8e64b6a0aa72dbd8aff967160ffa74` |
| 11 | `theorem` | [concrete_route_implies_literal_RH](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/declarations/concrete-route-implies-literal-rh.md) | 71 | `result-track:b92d3dffcb2d01046bf50b816ead05abe15d3674acb184ae5774cc62bf9f66ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17851cae49b71fefb664769318bfac6612aabeda3c23f42263b131746ef4b518 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/ReciprocalZetaQuadraticKernel.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/ReciprocalZetaQuadraticKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
