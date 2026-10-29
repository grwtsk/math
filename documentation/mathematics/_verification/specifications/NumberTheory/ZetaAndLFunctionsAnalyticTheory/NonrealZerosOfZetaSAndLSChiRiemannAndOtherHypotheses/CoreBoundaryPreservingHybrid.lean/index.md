# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryPreservingHybrid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5644ce1b421bbbe1308d5ea7b62710c1a7633b3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5644ce1b421bbbe1308d5ea7b62710c1a7633b3`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientPiecewise`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreLengthCoefficientPiecewise.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreBoundarySignedDepthContribution](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/coreboundarysigneddepthcontribution.md) | 21 | `declaration-track:6dd3ef235a8d91ae006c26d958a670cf4ffca6b716d1064f9b4a571c0ab492f4` |
| 2 | `def` | [coreBoundarySignedPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/coreboundarysignedpacket.md) | 29 | `declaration-track:5e8dac20283b0af3c0fd7a418867fbdec84423060fcd7f3f05274b90ed561208` |
| 3 | `def` | [coreNonboundarySignedRemainderPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/corenonboundarysignedremainderpacket.md) | 36 | `declaration-track:cb1f57e95feadc58c57a2492e2a512913292d7e50d6462929a3edb374deeab51` |
| 4 | `def` | [coreNonboundaryDepthShortIntervalL1Majorant](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/corenonboundarydepthshortintervall1majorant.md) | 42 | `declaration-track:f5d61fde3ab491e90b3881d0beba66b28dce6affb7cbb3528dd3ca8ec89dcd17` |
| 5 | `def` | [coreNonboundaryShortIntervalL1Packet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/corenonboundaryshortintervall1packet.md) | 50 | `declaration-track:322676e0f3c7ac42be4d264cac6b227ebc7872a324708502d0052a695125aa4d` |
| 6 | `def` | [coreNonboundarySignedDepthRemainder](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/corenonboundarysigneddepthremainder.md) | 57 | `declaration-track:1a8fb6b6c5b9d81c33fe77aede3500649a078632d87bbf7099adac49b1f70199` |
| 7 | `theorem` | [coreLongDeepRemainderPacket_eq_boundary_add_nonboundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/corelongdeepremainderpacket-eq-boundary-add-nonboundary.md) | 63 | `result-track:32c8fab3bf4ffe0f16ba71a2b8f7331110fa6558d56073293b883e01070decb1` |
| 8 | `theorem` | [abs_coreNonboundarySignedDepthRemainder_le_l1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/abs-corenonboundarysigneddepthremainder-le-l1.md) | 73 | `result-track:82a9aa84786adf640ae159c0085e2ba203a046a4d27ae76a1144c589974f0dd6` |
| 9 | `theorem` | [abs_coreNonboundarySignedRemainderPacket_le_l1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/abs-corenonboundarysignedremainderpacket-le-l1.md) | 111 | `result-track:cd291a577cd3d714c8904428aa23ee56706a804ee87a0711eac3fba600e440d3` |
| 10 | `def` | [SubpolynomialCoreBoundarySignedPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/subpolynomialcoreboundarysignedpacket.md) | 139 | `declaration-track:3caf672155ffb8ecc781195d499c2d0c87f03444e6f6a98c53a379537af3b321` |
| 11 | `def` | [SubpolynomialCoreNonboundaryShortIntervalL1Packet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/subpolynomialcorenonboundaryshortintervall1packet.md) | 146 | `declaration-track:14d823f717dedf1eb8edf6a6d1bff955ff330875dfa35c7c0fa20341ecbd86bc` |
| 12 | `def` | [HybridBoundaryPreservingCoreSupplier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/hybridboundarypreservingcoresupplier.md) | 153 | `declaration-track:eab83bfbe235576595af77b9e2ec6fd48d808897d4fc2ed326560a54c95e41d8` |
| 13 | `theorem` | [subpolynomialCoreLongDeepRemainderPacket_of_hybridBoundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/subpolynomialcorelongdeepremainderpacket-of-hybridboundary.md) | 159 | `result-track:d2ad513b99edff6b1f9a42d70fe7b4915cf2580862e720d5d8aabeedaf6beb82` |
| 14 | `theorem` | [riemannHypothesis_of_hybridBoundaryPreservingCoreSupplier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/riemannhypothesis-of-hybridboundarypreservingcoresupplier.md) | 184 | `result-track:2eda0b9d1283aa73228372f3b1762b8af62b55cfaccb371cc12cacb1e70e6462` |
| 15 | `theorem` | [signedStartPointCancellation_hostileWitness](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreBoundaryPreservingHybrid.lean/declarations/signedstartpointcancellation-hostilewitness.md) | 194 | `result-track:2413c7f0c0e83787e5fc52e1986a276cf6411c63cf473d5f2edd2d6528c4078d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dea2c634f8193598639ba393ff82cfbe41a38d989c672bd30751d4f8096556b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
