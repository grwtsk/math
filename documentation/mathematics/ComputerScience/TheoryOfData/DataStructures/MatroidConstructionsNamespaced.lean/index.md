# Matroid Constructions Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b4d68b715c2e07084918ba0dac6496c65789367`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/MatroidConstructionsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [emptyOn](declarations/emptyon.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [emptyOn_ground](declarations/emptyon-ground.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [emptyOn_isBase_iff](declarations/emptyon-isbase-iff.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [emptyOn_indep_iff](declarations/emptyon-indep-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ground_eq_empty_iff](declarations/ground-eq-empty-iff.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [emptyOn_dual_eq](declarations/emptyon-dual-eq.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [restrict_empty](declarations/restrict-empty.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_emptyOn_or_nonempty](declarations/eq-emptyon-or-nonempty.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_emptyOn](declarations/eq-emptyon.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [finite_emptyOn](declarations/finite-emptyon.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [loopyOn](declarations/loopyon.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [loopyOn_ground](declarations/loopyon-ground.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [loopyOn_empty](declarations/loopyon-empty.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [loopyOn_indep_iff](declarations/loopyon-indep-iff.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eq_loopyOn_iff](declarations/eq-loopyon-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [loopyOn_isBase_iff](declarations/loopyon-isbase-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [loopyOn_isBasis_iff](declarations/loopyon-isbasis-iff.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Finite.loopyOn_finite](declarations/finite-loopyon-finite.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [loopyOn_restrict](declarations/loopyon-restrict.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [empty_isBase_iff](declarations/empty-isbase-iff.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_loopyOn_or_rankPos](declarations/eq-loopyon-or-rankpos.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_rankPos_iff](declarations/not-rankpos-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [loopyOn_rankFinite](declarations/loopyon-rankfinite.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [freeOn](declarations/freeon.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [freeOn_ground](declarations/freeon-ground.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [freeOn_dual_eq](declarations/freeon-dual-eq.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [loopyOn_dual_eq](declarations/loopyon-dual-eq.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [freeOn_empty](declarations/freeon-empty.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [freeOn_isBase_iff](declarations/freeon-isbase-iff.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [freeOn_indep_iff](declarations/freeon-indep-iff.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [freeOn_indep](declarations/freeon-indep.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [freeOn_isBasis_iff](declarations/freeon-isbasis-iff.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [freeOn_isBasis'_iff](declarations/freeon-isbasis-iff-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eq_freeOn_iff](declarations/eq-freeon-iff.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ground_indep_iff_eq_freeOn](declarations/ground-indep-iff-eq-freeon.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [freeOn_restrict](declarations/freeon-restrict.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [restrict_eq_freeOn_iff](declarations/restrict-eq-freeon-iff.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Indep.restrict_eq_freeOn](declarations/indep-restrict-eq-freeon.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [freeOn_finitary](declarations/freeon-finitary.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [freeOn_rankPos](declarations/freeon-rankpos.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [uniqueBaseOn](declarations/uniquebaseon.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [uniqueBaseOn_ground](declarations/uniquebaseon-ground.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [uniqueBaseOn_isBase_iff](declarations/uniquebaseon-isbase-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [uniqueBaseOn_inter_ground_eq](declarations/uniquebaseon-inter-ground-eq.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [uniqueBaseOn_indep_iff'](declarations/uniquebaseon-indep-iff.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [uniqueBaseOn_indep_iff](declarations/uniquebaseon-indep-iff-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [uniqueBaseOn_isBasis_iff](declarations/uniquebaseon-isbasis-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [uniqueBaseOn_inter_isBasis](declarations/uniquebaseon-inter-isbasis.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [uniqueBaseOn_dual_eq](declarations/uniquebaseon-dual-eq.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [uniqueBaseOn_self](declarations/uniquebaseon-self.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [uniqueBaseOn_empty](declarations/uniquebaseon-empty.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [uniqueBaseOn_restrict'](declarations/uniquebaseon-restrict-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [uniqueBaseOn_restrict](declarations/uniquebaseon-restrict.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [uniqueBaseOn_rankFinite](declarations/uniquebaseon-rankfinite.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [uniqueBaseOn_finitary](declarations/uniquebaseon-finitary.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [uniqueBaseOn_rankPos](declarations/uniquebaseon-rankpos.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9a150f345fec5f632de5dcc2756735ad8530e2d46231718aa728e051db6fdc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
