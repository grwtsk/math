# Riemann Scheduler Chebyshev

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b79e62661e927d66b5d389011fb3436cc4c3600b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/RiemannSchedulerChebyshev.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSchedulerClaimRecord](declarations/finiteschedulerclaimrecord.md) | 5 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [ClaimStatus](declarations/claimstatus.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [InnerOuterFiniteSurface](declarations/innerouterfinitesurface.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [InnerOuterFiniteSurface.Valid](declarations/innerouterfinitesurface-valid.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [BitstreamDecoder](declarations/bitstreamdecoder.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [BitstreamDecoder.Valid](declarations/bitstreamdecoder-valid.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [OrderedPoleProjection](declarations/orderedpoleprojection.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [OrderedPoleProjection.Valid](declarations/orderedpoleprojection-valid.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ValidatedTraceQuotient](declarations/validatedtracequotient.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ValidatedTraceQuotient.Valid](declarations/validatedtracequotient-valid.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [CompactShellProjection](declarations/compactshellprojection.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [CompactShellProjection.Valid](declarations/compactshellprojection-valid.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [compact_shell_projection_valid_refuses_order_authority](declarations/compact-shell-projection-valid-refuses-order-authority.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [QuotientBridgeStage](declarations/quotientbridgestage.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [QuotientBridgeStage.Valid](declarations/quotientbridgestage-valid.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [StageBijectionSound](declarations/stagebijectionsound.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bitstream_trace_stage_bijection](declarations/bitstream-trace-stage-bijection.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [QuotientBridgeTransition](declarations/quotientbridgetransition.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [QuotientBridgeTransition.Valid](declarations/quotientbridgetransition-valid.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [QuotientBridgeResidueAccounting](declarations/quotientbridgeresidueaccounting.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [QuotientBridgeResidueAccounting.Valid](declarations/quotientbridgeresidueaccounting-valid.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [LFunctionLoweringInverseSystem](declarations/lfunctionloweringinversesystem.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [LFunctionLoweringInverseSystem.Valid](declarations/lfunctionloweringinversesystem-valid.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [LimitBijectionSound](declarations/limitbijectionsound.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [quotient_limit_bijection](declarations/quotient-limit-bijection.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [QuotientLimitBridgeData](declarations/quotientlimitbridgedata.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [QuotientLimitBridgeData.Valid](declarations/quotientlimitbridgedata-valid.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [FredholmStyleFiniteWitness](declarations/fredholmstylefinitewitness.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FredholmStyleFiniteWitness.Valid](declarations/fredholmstylefinitewitness-valid.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [QuotientLimitBridgeSound](declarations/quotientlimitbridgesound.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lfunction_bitmatrix_trace_compact_quotient_limit_bijective](declarations/lfunction-bitmatrix-trace-compact-quotient-limit-bijective.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [quotient_limit_bridge_valid_covers_residue_requirements](declarations/quotient-limit-bridge-valid-covers-residue-requirements.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [fredholm_witness_valid_cannot_replace_explicit_maps](declarations/fredholm-witness-valid-cannot-replace-explicit-maps.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [ZhangPolymath8FiniteClassifier](declarations/zhangpolymath8finiteclassifier.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [ZhangPolymath8FiniteClassifier.Valid](declarations/zhangpolymath8finiteclassifier-valid.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [BoundedKakeyaNavierStokesScheduler](declarations/boundedkakeyanavierstokesscheduler.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [BoundedKakeyaNavierStokesScheduler.Valid](declarations/boundedkakeyanavierstokesscheduler-valid.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [ChebyshevEnvelopeClusterRecord](declarations/chebyshevenvelopeclusterrecord.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [ChebyshevEnvelopeClusterRecord.Valid](declarations/chebyshevenvelopeclusterrecord-valid.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ResidueLedger](declarations/residueledger.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ResidueLedger.Valid](declarations/residueledger-valid.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [FiniteWitnessManuscriptSound](declarations/finitewitnessmanuscriptsound.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [riemann_modular_wave_scheduler_chebyshev_clustering_sound](declarations/riemann-modular-wave-scheduler-chebyshev-clustering-sound.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [riemann_scheduler_sound_has_no_repo_theorem_authority](declarations/riemann-scheduler-sound-has-no-repo-theorem-authority.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c52d4749f0f90cac7d74100e714646d9d56931507840d2d7b0b17b793782fe39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
