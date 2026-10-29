# Complete Lattice Defs

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant125301c245b062aa469762fb48297a712a9df3756b970ef57366208cffe99125.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c5def2798baf5bb8e2cb205d275bb570c96217d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [OrderDual.supSet](declarations/orderdual-supset.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [OrderDual.infSet](declarations/orderdual-infset.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [CompleteSemilatticeSup](declarations/completesemilatticesup.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [le_sSup](declarations/le-ssup.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sSup_le](declarations/ssup-le.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isLUB_sSup](declarations/islub-ssup.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isLUB_iff_sSup_eq](declarations/islub-iff-ssup-eq.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_sSup_of_le](declarations/le-ssup-of-le.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sSup_le_sSup](declarations/ssup-le-ssup.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sSup_le_iff](declarations/ssup-le-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [le_sSup_iff](declarations/le-ssup-iff.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_iSup_iff](declarations/le-isup-iff.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [CompleteSemilatticeInf](declarations/completesemilatticeinf.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sInf_le](declarations/sinf-le.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [le_sInf](declarations/le-sinf.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isGLB_sInf](declarations/isglb-sinf.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [isGLB_iff_sInf_eq](declarations/isglb-iff-sinf-eq.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sInf_le_of_le](declarations/sinf-le-of-le.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sInf_le_sInf](declarations/sinf-le-sinf.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [le_sInf_iff](declarations/le-sinf-iff.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sInf_le_iff](declarations/sinf-le-iff.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [iInf_le_iff](declarations/iinf-le-iff.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [CompleteLattice](declarations/completelattice.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [completeLatticeOfInf](declarations/completelatticeofinf.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [completeLatticeOfCompleteSemilatticeInf](declarations/completelatticeofcompletesemilatticeinf.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [completeLatticeOfSup](declarations/completelatticeofsup.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [completeLatticeOfCompleteSemilatticeSup](declarations/completelatticeofcompletesemilatticesup.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [CompleteLinearOrder](declarations/completelinearorder.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [CompleteLinearOrder.toLinearOrder](declarations/completelinearorder-tolinearorder.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instCompleteLattice](declarations/instcompletelattice.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instCompleteLinearOrder](declarations/instcompletelinearorder.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toDual_sSup](declarations/todual-ssup.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toDual_sInf](declarations/todual-sinf.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ofDual_sSup](declarations/ofdual-ssup.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ofDual_sInf](declarations/ofdual-sinf.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toDual_iSup](declarations/todual-isup.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toDual_iInf](declarations/todual-iinf.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ofDual_iSup](declarations/ofdual-isup.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ofDual_iInf](declarations/ofdual-iinf.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lt_sSup_iff](declarations/lt-ssup-iff.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sInf_lt_iff](declarations/sinf-lt-iff.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sSup_eq_top](declarations/ssup-eq-top.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sInf_eq_bot](declarations/sinf-eq-bot.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lt_iSup_iff](declarations/lt-isup-iff.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [iInf_lt_iff](declarations/iinf-lt-iff.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=614a5c11f866a973e943763567f15d463ae0e0fd69ccc30cade0c2d8b9f70cb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant125301c245b062aa469762fb48297a712a9df3756b970ef57366208cffe99125.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
