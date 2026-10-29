# Verification target: GRWTSK.NumberTheory.Moebius.MertensLongShortIntervalSupplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6bc749d55b9b627868194eaee9695baea07740f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensLongShortIntervalSupplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6bc749d55b9b627868194eaee9695baea07740f`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensLongShortIntervalSupplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensLongShortIntervalSupplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Asymptotics.DyadicLogAbsorption`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicShortSignedPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/logarithmicshortsignedpacket.md) | 20 | `declaration-track:e443ac968a6341fcd2ae581895c194abd89890437c2975a8eedd7cb5f9ad25a0` |
| 2 | `def` | [logarithmicLongHarmonicRemainderPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/logarithmiclongharmonicremainderpacket.md) | 29 | `declaration-track:a9fd5557d46c85697cbda161fc57f2c3818b1274e7e273a17a6a1fb55cbed03f` |
| 3 | `theorem` | [harmonicPacket_eq_shortSigned_add_longRemainder](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/harmonicpacket-eq-shortsigned-add-longremainder.md) | 34 | `result-track:421c1db1eecd538dc1c5d91a2a7aa9261cfedea37f0a108281ab3a55bfc145d1` |
| 4 | `theorem` | [abs_logarithmicShortSignedPacket_le_budget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/abs-logarithmicshortsignedpacket-le-budget.md) | 44 | `result-track:14267d3a5286ec29e19d5f489c28ebc300cb195ad0b2035fa0cafd0843fd0868` |
| 5 | `def` | [LongHarmonicShortIntervalL1Envelope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/longharmonicshortintervall1envelope.md) | 68 | `declaration-track:b38ab84b1bf23edaa5f925145fb7a277905519dc7c990a9fa3ee393e9a657de6` |
| 6 | `structure` | [LongHarmonicShortIntervalL1Source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/longharmonicshortintervall1source.md) | 78 | `declaration-track:4a70dbcbcaf2973ca17242983568b1d4579be32f5e49f0531d2042a39f12f391` |
| 7 | `def` | [SubpolynomialLongHarmonicRemainderPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/subpolynomiallongharmonicremainderpacket.md) | 89 | `declaration-track:c6e87d0466df6e181b9492fb635464120fde4d7559bdf6a3bbefa6b04943fa7d` |
| 8 | `theorem` | [subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_of_longRemainder](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/subpolynomialdyadicharmonicweightedmertenschowlapacket-of-longremainder.md) | 97 | `result-track:d67e2f7dae5a5a79e81969d6f9d8b162d94f2b4a5f55e4fc8d28200d7b20be56` |
| 9 | `theorem` | [riemannHypothesis_of_subpolynomialLongHarmonicRemainderPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/riemannhypothesis-of-subpolynomiallongharmonicremainderpacket.md) | 124 | `result-track:33e02c5fdaa2d7db0dd4559db0c5d278138a8323bf4555f692577e3bc9e3b984` |
| 10 | `structure` | [LongShortIntervalL1ToRemainderAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/longshortintervall1toremainderadapter.md) | 136 | `declaration-track:aec58143eac22162fb5b8e8d1ab12f4b6cbba41f17f74ad4710f3960e72e64fc` |
| 11 | `theorem` | [riemannHypothesis_of_longShortIntervalL1Adapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MertensLongShortIntervalSupplier.lean/declarations/riemannhypothesis-of-longshortintervall1adapter.md) | 145 | `result-track:633242ea2d1ef2a4c706381cd06b82cfc29de1fd8590ac35a6f6d6365985562c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e631a0dec918558bc2a09ae380413177fe5ce21e557ba56cb15a36405d5d3da7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MertensLongShortIntervalSupplier.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/MertensLongShortIntervalSupplier.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
