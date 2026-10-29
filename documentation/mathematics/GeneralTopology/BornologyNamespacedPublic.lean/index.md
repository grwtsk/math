# Bornology Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a541e9d2e14ff7318e9ee5f218c5a794bcf35191`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/BornologyNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [orderBornology](declarations/orderbornology.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [orderBornology_isBounded](declarations/orderbornology-isbounded.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsOrderBornology](declarations/isorderbornology.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isOrderBornology_iff_eq_orderBornology](declarations/isorderbornology-iff-eq-orderbornology.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [isBounded_iff_bddBelow_bddAbove](declarations/isbounded-iff-bddbelow-bddabove.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Bornology.IsBounded.bddBelow](declarations/bornology-isbounded-bddbelow.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [Bornology.IsBounded.bddAbove](declarations/bornology-isbounded-bddabove.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [BddBelow.isBounded](declarations/bddbelow-isbounded.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [BddAbove.isBounded](declarations/bddabove-isbounded.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [BddBelow.isBounded_inter](declarations/bddbelow-isbounded-inter.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [BddAbove.isBounded_inter](declarations/bddabove-isbounded-inter.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [OrderDual.instIsOrderBornology](declarations/orderdual-instisorderbornology.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [Prod.instIsOrderBornology](declarations/prod-instisorderbornology.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [Pi.instIsOrderBornology](declarations/pi-instisorderbornology.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [Nonempty.of_isOrderBornology](declarations/nonempty-of-isorderbornology.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [IsOrderBornology.neBot_cobounded_of_noBotOrder](declarations/isorderbornology-nebot-cobounded-of-nobotorder.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [IsOrderBornology.neBot_cobounded_of_noTopOrder](declarations/isorderbornology-nebot-cobounded-of-notoporder.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsOrderBornology.atTop_le_cobounded](declarations/isorderbornology-attop-le-cobounded.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsOrderBornology.atBot_le_cobounded](declarations/isorderbornology-atbot-le-cobounded.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsOrderBornology.cobounded_le_atBot_sup_atTop](declarations/isorderbornology-cobounded-le-atbot-sup-attop.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsOrderBornology.cobounded_eq](declarations/isorderbornology-cobounded-eq.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsOrderBornology.cobounded_eq_atTop](declarations/isorderbornology-cobounded-eq-attop.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsOrderBornology.cobounded_eq_atBot](declarations/isorderbornology-cobounded-eq-atbot.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [Bornology.IsBounded.subset_Icc_sInf_sSup](declarations/bornology-isbounded-subset-icc-sinf-ssup.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e7c6bcabfd06732ee5249016042741ee67934f96816ae3ab3f82a5517cef964 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
