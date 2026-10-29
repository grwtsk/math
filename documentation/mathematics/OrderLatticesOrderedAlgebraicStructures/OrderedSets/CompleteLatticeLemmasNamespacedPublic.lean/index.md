# Complete Lattice Lemmas Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant620f12da2c31cf7f6ecb9d545673e39b144b8103a4022bfd40535dea50434bfb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05f8651815a37d6dee08195e751d52400e81a5a4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeLemmasNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_bool_eq](declarations/isup-bool-eq.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sup_eq_iSup](declarations/sup-eq-isup.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [iSup_ge_eq_iSup_nat_add](declarations/isup-ge-eq-isup-nat-add.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Monotone.iSup_nat_add](declarations/monotone-isup-nat-add.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Antitone.iInf_nat_add](declarations/antitone-iinf-nat-add.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [iSup_iInf_ge_nat_add](declarations/isup-iinf-ge-nat-add.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [iInf_iSup_ge_nat_add](declarations/iinf-isup-ge-nat-add.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sup_iSup_nat_succ](declarations/sup-isup-nat-succ.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [iInf_nat_gt_zero_eq](declarations/iinf-nat-gt-zero-eq.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sup_sInf_le_iInf_sup](declarations/sup-sinf-le-iinf-sup.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sInf_sup_le_iInf_sup](declarations/sinf-sup-le-iinf-sup.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [iInf_sup_le_iInf_sup](declarations/iinf-sup-le-iinf-sup.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sup_iInf_le_iInf_sup](declarations/sup-iinf-le-iinf-sup.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [biInf_sup_le_biInf_sup](declarations/biinf-sup-le-biinf-sup.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [sup_biInf_le_biInf_sup](declarations/sup-biinf-le-biinf-sup.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [iInf_sup_iInf_le](declarations/iinf-sup-iinf-le.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [disjoint_sSup_left](declarations/disjoint-ssup-left.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [disjoint_sSup_right](declarations/disjoint-ssup-right.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [disjoint_of_sSup_disjoint_of_le_of_le](declarations/disjoint-of-ssup-disjoint-of-le-of-le.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [disjoint_of_sSup_disjoint](declarations/disjoint-of-ssup-disjoint.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [supSet](declarations/supset.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [down_sSup](declarations/down-ssup.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [up_sSup](declarations/up-ssup.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [down_iSup](declarations/down-isup.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [up_iSup](declarations/up-isup.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instCompleteLattice](declarations/instcompletelattice.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instCompleteLinearOrder](declarations/instcompletelinearorder.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4716613f6b4c26fd35d16f751c319521b38fbfd3ff32fe74f58d8081ab0eb2e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant620f12da2c31cf7f6ecb9d545673e39b144b8103a4022bfd40535dea50434bfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
