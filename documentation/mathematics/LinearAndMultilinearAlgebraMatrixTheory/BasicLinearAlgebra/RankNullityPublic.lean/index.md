# Rank Nullity Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daaf467a9ec0eca0330d167d074eeb610d1c6549`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankNullityPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HasRankNullity](declarations/hasranknullity.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [Submodule.rank_quotient_add_rank](declarations/submodule-rank-quotient-add-rank.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [exists_set_linearIndependent](declarations/exists-set-linearindependent.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nontrivial_of_hasRankNullity](declarations/nontrivial-of-hasranknullity.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearMap.lift_rank_range_add_rank_ker](declarations/linearmap-lift-rank-range-add-rank-ker.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [LinearMap.rank_range_add_rank_ker](declarations/linearmap-rank-range-add-rank-ker.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [LinearMap.lift_rank_eq_of_surjective](declarations/linearmap-lift-rank-eq-of-surjective.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [LinearMap.rank_eq_of_surjective](declarations/linearmap-rank-eq-of-surjective.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [LinearMap.lift_rank_comap_le](declarations/linearmap-lift-rank-comap-le.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [LinearMap.rank_quot_submodule_map_eq](declarations/linearmap-rank-quot-submodule-map-eq.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [LinearMap.lift_rank_quot_map_le](declarations/linearmap-lift-rank-quot-map-le.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [exists_linearIndepOn_of_lt_rank](declarations/exists-linearindepon-of-lt-rank.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [exists_linearIndependent_cons_of_lt_rank](declarations/exists-linearindependent-cons-of-lt-rank.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [exists_linearIndependent_snoc_of_lt_rank](declarations/exists-linearindependent-snoc-of-lt-rank.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_linearIndependent_pair_of_one_lt_rank](declarations/exists-linearindependent-pair-of-one-lt-rank.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Submodule.exists_smul_notMem_of_rank_lt](declarations/submodule-exists-smul-notmem-of-rank-lt.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Submodule.rank_sup_add_rank_inf_eq](declarations/submodule-rank-sup-add-rank-inf-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Submodule.rank_add_le_rank_add_rank](declarations/submodule-rank-add-le-rank-add-rank.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_linearIndependent_snoc_of_lt_finrank](declarations/exists-linearindependent-snoc-of-lt-finrank.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exists_linearIndependent_cons_of_lt_finrank](declarations/exists-linearindependent-cons-of-lt-finrank.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_linearIndependent_pair_of_one_lt_finrank](declarations/exists-linearindependent-pair-of-one-lt-finrank.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Submodule.finrank_quotient_add_finrank](declarations/submodule-finrank-quotient-add-finrank.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Submodule.finrank_quotient](declarations/submodule-finrank-quotient.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [Submodule.disjoint_ker_of_finrank_le](declarations/submodule-disjoint-ker-of-finrank-le.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Submodule.exists_of_finrank_lt](declarations/submodule-exists-of-finrank-lt.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47414cf0b57fc260bbc5bfaa4ecf0bbe8f6ce1ce0dd706376535ef1399194cf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
