# Topology Order Left Right Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3550da6c44de882d02536c58a62ecb01e22d6eef`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologyOrderLeftRightPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [frequently_lt_nhds](declarations/frequently-lt-nhds.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Filter.Eventually.exists_lt](declarations/filter-eventually-exists-lt.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [nhdsWithin_Ici_neBot](declarations/nhdswithin-ici-nebot.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [nhdsLE_neBot](declarations/nhdsle-nebot.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [nhdsLT_le_nhdsNE](declarations/nhdslt-le-nhdsne.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsAntichain.interior_eq_empty](declarations/isantichain-interior-eq-empty-source-edition-2.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsAntichain.interior_eq_empty'](declarations/isantichain-interior-eq-empty.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [continuousWithinAt_Ioi_iff_Ici](declarations/continuouswithinat-ioi-iff-ici.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [continuousWithinAt_inter_Ioi_iff_Ici](declarations/continuouswithinat-inter-ioi-iff-ici.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nhdsLE_sup_nhdsGE](declarations/nhdsle-sup-nhdsge.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nhdsWithinLE_sup_nhdsWithinGE](declarations/nhdswithinle-sup-nhdswithinge.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nhdsLT_sup_nhdsGE](declarations/nhdslt-sup-nhdsge.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nhdsWithinLT_sup_nhdsWithinGE](declarations/nhdswithinlt-sup-nhdswithinge.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nhdsLE_sup_nhdsGT](declarations/nhdsle-sup-nhdsgt.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nhdsWithinLE_sup_nhdsWithinGT](declarations/nhdswithinle-sup-nhdswithingt.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nhdsLT_sup_nhdsGT](declarations/nhdslt-sup-nhdsgt.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nhdsWithinLT_sup_nhdsWithinGT](declarations/nhdswithinlt-sup-nhdswithingt.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [nhdsGT_sup_nhdsWithin_singleton](declarations/nhdsgt-sup-nhdswithin-singleton.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [nhdsWithin_uIoo_left_le_nhdsNE](declarations/nhdswithin-uioo-left-le-nhdsne.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [nhdsWithin_uIoo_right_le_nhdsNE](declarations/nhdswithin-uioo-right-le-nhdsne.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [continuousAt_iff_continuous_left_right](declarations/continuousat-iff-continuous-left-right.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [continuousAt_iff_continuous_left'_right'](declarations/continuousat-iff-continuous-left-right-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [continuousWithinAt_iff_continuous_left_right](declarations/continuouswithinat-iff-continuous-left-right-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [continuousWithinAt_iff_continuous_left'_right'](declarations/continuouswithinat-iff-continuous-left-right.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=495ff9a9c29aa80542b60fada6e04a9da1fe842793d69ac8c1e399e335bf401e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
