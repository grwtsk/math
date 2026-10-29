# Heat Flow Compression Sofic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `290757773fe6f295c025287d0d673d9d82c773df`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/HeatFlowCompressionSofic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrefix](declarations/isprefix.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [PrefixFree](declarations/prefixfree.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [LosslessPrefixCode](declarations/losslessprefixcode.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LosslessPrefixCode.encode_injective](declarations/losslessprefixcode-encode-injective.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LosslessPrefixCode.factorsThrough_encode](declarations/losslessprefixcode-factorsthrough-encode.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [factorsThrough_trans](declarations/factorsthrough-trans.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [HuffmanLikeCover](declarations/huffmanlikecover.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [readout_bound_to_process_of_huffmanLikeCover](declarations/readout-bound-to-process-of-huffmanlikecover.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [no_huffmanLikeCover_of_process_collision](declarations/no-huffmanlikecover-of-process-collision.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [SoficThrough](declarations/soficthrough.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [trace_eq_of_soficThrough](declarations/trace-eq-of-soficthrough.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [not_soficThrough_of_collision](declarations/not-soficthrough-of-collision.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [HeightArithmetic](declarations/heightarithmetic.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [IsIrrational](declarations/isirrational.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [IsTranscendental](declarations/istranscendental.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [irrational_of_transcendental](declarations/irrational-of-transcendental.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [transcendental_of_algebraic_implies_sofic_of_nonsofic](declarations/transcendental-of-algebraic-implies-sofic-of-nonsofic.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [irrational_of_rational_implies_sofic_of_nonsofic](declarations/irrational-of-rational-implies-sofic-of-nonsofic.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GRHFor](declarations/grhfor.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [grh_zero_height_transcendental_of_nonsofic](declarations/grh-zero-height-transcendental-of-nonsofic.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_height_irrational_and_grh_transcendental_of_nonsofic](declarations/zero-height-irrational-and-grh-transcendental-of-nonsofic.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ZeroFreeRightOf](declarations/zerofreerightof.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [RefinesFromAbove](declarations/refinesfromabove.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [AsymptoticallyFree](declarations/asymptoticallyfree.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [ThreeQuarterRefinement](declarations/threequarterrefinement.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ThreeQuarterRefinement.seed_zeroFree](declarations/threequarterrefinement-seed-zerofree.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ThreeQuarterRefinement.limit_zeroFree](declarations/threequarterrefinement-limit-zerofree.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ThreeQuarterRefinement.asymptotically_free_accounting](declarations/threequarterrefinement-asymptotically-free-accounting.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |

<!-- VERIFICATION AMENDMENT ef3ebeb99aa044d063db8b3ab0b25bc5a838ee8becd9d783caaeb3ef123a203b -->
This module shares source blob `290757773fe6f295c025287d0d673d9d82c773df` with the cross-branch replay pinned at Math commit `a631c3ab52379eacf4c4fced9111fadd983b37ae`; the target declarations selected from this module remain `NOT_RUN`. [Full roster and terminal evidence](../../_support/verification-updates/declaration107-lossless-restart-20261026.md).
<!-- END VERIFICATION AMENDMENT -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43416b50c07e3a24cbfbe98e946b9a63fe41c99037317e08c456fcff28e1bd19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
