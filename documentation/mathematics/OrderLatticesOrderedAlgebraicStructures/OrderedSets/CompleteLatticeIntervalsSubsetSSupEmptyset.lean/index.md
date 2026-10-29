# Complete Lattice Intervals Subset SSup Emptyset

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2c3636110fc828c3cd36ac40c1515701eb97378`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSubsetSSupEmptyset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [subsetSupSet](declarations/subsetsupset.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [subset_sSup_def](declarations/subset-ssup-def.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [subset_sSup_of_within](declarations/subset-ssup-of-within.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [subset_sSup_emptyset](declarations/subset-ssup-emptyset.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [subset_sSup_of_not_bddAbove](declarations/subset-ssup-of-not-bddabove.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [subsetInfSet](declarations/subsetinfset.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [subset_sInf_def](declarations/subset-sinf-def.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [subset_sInf_of_within](declarations/subset-sinf-of-within.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [subset_sInf_emptyset](declarations/subset-sinf-emptyset.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [subset_sInf_of_not_bddBelow](declarations/subset-sinf-of-not-bddbelow.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [subsetConditionallyCompleteLinearOrder](declarations/subsetconditionallycompletelinearorder.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sSup_within_of_ordConnected](declarations/ssup-within-of-ordconnected.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sInf_within_of_ordConnected](declarations/sinf-within-of-ordconnected.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [ordConnectedSubsetConditionallyCompleteLinearOrder](declarations/ordconnectedsubsetconditionallycompletelinearorder.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [Set.Icc.completeLattice](declarations/set-icc-completelattice.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Set.Icc.coe_sSup](declarations/set-icc-coe-ssup.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Set.Icc.coe_sInf](declarations/set-icc-coe-sinf.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Set.Icc.coe_iSup](declarations/set-icc-coe-isup.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Set.Icc.coe_iInf](declarations/set-icc-coe-iinf.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instCompleteLattice](declarations/instcompletelattice.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_sSup](declarations/coe-ssup.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_iSup](declarations/coe-isup.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_biSup](declarations/coe-bisup.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_sInf](declarations/coe-sinf.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_iInf](declarations/coe-iinf.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_biInf](declarations/coe-biinf.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97cf9caaac3401ad5670388ccf518cbcfa3f81d3925371ade1172fe427cc1a7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf8ec24180610e62c5a37ce70f5777bc95c8b60a7e82d0c06bb037a7eebe9c1f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
