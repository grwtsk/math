# Matroid Constructions

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0854c6c5c2645bdb02139c34af7847dc27ba6b92`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/MatroidConstructions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [emptyOn](declarations/emptyon.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [emptyOn_ground](declarations/emptyon-ground.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [emptyOn_isBase_iff](declarations/emptyon-isbase-iff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [emptyOn_indep_iff](declarations/emptyon-indep-iff.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ground_eq_empty_iff](declarations/ground-eq-empty-iff.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [emptyOn_dual_eq](declarations/emptyon-dual-eq.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [restrict_empty](declarations/restrict-empty.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_emptyOn_or_nonempty](declarations/eq-emptyon-or-nonempty.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_emptyOn](declarations/eq-emptyon.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [finite_emptyOn](declarations/finite-emptyon.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [loopyOn](declarations/loopyon.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [loopyOn_ground](declarations/loopyon-ground.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [loopyOn_empty](declarations/loopyon-empty.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [loopyOn_indep_iff](declarations/loopyon-indep-iff.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eq_loopyOn_iff](declarations/eq-loopyon-iff.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [loopyOn_isBase_iff](declarations/loopyon-isbase-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [loopyOn_isBasis_iff](declarations/loopyon-isbasis-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Finite.loopyOn_finite](declarations/finite-loopyon-finite.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [loopyOn_restrict](declarations/loopyon-restrict.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [empty_isBase_iff](declarations/empty-isbase-iff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_loopyOn_or_rankPos](declarations/eq-loopyon-or-rankpos.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_rankPos_iff](declarations/not-rankpos-iff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [loopyOn_rankFinite](declarations/loopyon-rankfinite.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [freeOn](declarations/freeon.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [freeOn_ground](declarations/freeon-ground.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [freeOn_dual_eq](declarations/freeon-dual-eq.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [loopyOn_dual_eq](declarations/loopyon-dual-eq.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [freeOn_empty](declarations/freeon-empty.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [freeOn_isBase_iff](declarations/freeon-isbase-iff.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [freeOn_indep_iff](declarations/freeon-indep-iff.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [freeOn_indep](declarations/freeon-indep.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [freeOn_isBasis_iff](declarations/freeon-isbasis-iff-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [freeOn_isBasis'_iff](declarations/freeon-isbasis-iff.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eq_freeOn_iff](declarations/eq-freeon-iff.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ground_indep_iff_eq_freeOn](declarations/ground-indep-iff-eq-freeon.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [freeOn_restrict](declarations/freeon-restrict.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [restrict_eq_freeOn_iff](declarations/restrict-eq-freeon-iff.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Indep.restrict_eq_freeOn](declarations/indep-restrict-eq-freeon.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [freeOn_finitary](declarations/freeon-finitary.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [freeOn_rankPos](declarations/freeon-rankpos.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [uniqueBaseOn](declarations/uniquebaseon.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [uniqueBaseOn_ground](declarations/uniquebaseon-ground.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [uniqueBaseOn_isBase_iff](declarations/uniquebaseon-isbase-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [uniqueBaseOn_inter_ground_eq](declarations/uniquebaseon-inter-ground-eq.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [uniqueBaseOn_indep_iff'](declarations/uniquebaseon-indep-iff-source-edition-2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [uniqueBaseOn_indep_iff](declarations/uniquebaseon-indep-iff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [uniqueBaseOn_isBasis_iff](declarations/uniquebaseon-isbasis-iff.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [uniqueBaseOn_inter_isBasis](declarations/uniquebaseon-inter-isbasis.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [uniqueBaseOn_dual_eq](declarations/uniquebaseon-dual-eq.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [uniqueBaseOn_self](declarations/uniquebaseon-self.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [uniqueBaseOn_empty](declarations/uniquebaseon-empty.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [uniqueBaseOn_restrict'](declarations/uniquebaseon-restrict.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [uniqueBaseOn_restrict](declarations/uniquebaseon-restrict-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [uniqueBaseOn_rankFinite](declarations/uniquebaseon-rankfinite.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [uniqueBaseOn_finitary](declarations/uniquebaseon-finitary.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [uniqueBaseOn_rankPos](declarations/uniquebaseon-rankpos.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d65eee0e67f6d82ed6b2e6cdf05f36c26f19639fdbbf6b68017a998e79728c1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
