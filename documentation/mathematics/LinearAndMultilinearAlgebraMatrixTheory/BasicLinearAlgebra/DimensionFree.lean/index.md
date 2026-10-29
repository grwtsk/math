# Dimension Free

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bf0c637eac3af20494b75e0c7c0f6c4f273010c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionFree.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_rank_mul_lift_rank](declarations/lift-rank-mul-lift-rank.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rank_mul_rank](declarations/rank-mul-rank.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Module.finrank_mul_finrank](declarations/module-finrank-mul-finrank.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rank_eq_card_chooseBasisIndex](declarations/rank-eq-card-choosebasisindex.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [_root_.Module.finrank_eq_card_chooseBasisIndex](declarations/root-module-finrank-eq-card-choosebasisindex.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [rank_eq_mk_of_infinite_lt](declarations/rank-eq-mk-of-infinite-lt.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nonempty_linearEquiv_of_lift_rank_eq](declarations/nonempty-linearequiv-of-lift-rank-eq.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nonempty_linearEquiv_of_rank_eq](declarations/nonempty-linearequiv-of-rank-eq.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [LinearEquiv.ofLiftRankEq](declarations/linearequiv-ofliftrankeq.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [LinearEquiv.ofRankEq](declarations/linearequiv-ofrankeq.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [LinearEquiv.nonempty_equiv_iff_lift_rank_eq](declarations/linearequiv-nonempty-equiv-iff-lift-rank-eq.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [LinearEquiv.nonempty_equiv_iff_rank_eq](declarations/linearequiv-nonempty-equiv-iff-rank-eq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [FiniteDimensional.nonempty_linearEquiv_of_finrank_eq](declarations/finitedimensional-nonempty-linearequiv-of-finrank-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [FiniteDimensional.nonempty_linearEquiv_iff_finrank_eq](declarations/finitedimensional-nonempty-linearequiv-iff-finrank-eq.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [LinearEquiv.ofFinrankEq](declarations/linearequiv-offinrankeq.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [subsingleton_of_rank_zero](declarations/subsingleton-of-rank-zero.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [rank_lt_aleph0_iff](declarations/rank-lt-aleph0-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [finrank_of_not_finite](declarations/finrank-of-not-finite.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finite_of_finrank_pos](declarations/finite-of-finrank-pos.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finite_of_finrank_eq_succ](declarations/finite-of-finrank-eq-succ.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [finite_iff_of_rank_eq_nsmul](declarations/finite-iff-of-rank-eq-nsmul.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [finrank_top_le_finrank_of_isScalarTower_of_free](declarations/finrank-top-le-finrank-of-isscalartower-of-free.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [finrank_bot_le_finrank_of_isScalarTower_of_free](declarations/finrank-bot-le-finrank-of-isscalartower-of-free.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [finBasis](declarations/finbasis.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [finBasisOfFinrankEq](declarations/finbasisoffinrankeq.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [basisUnique](declarations/basisunique.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [basisUnique_repr_eq_zero_iff](declarations/basisunique-repr-eq-zero-iff.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e9f64181bc89934f7015dee8637e0231bedde790906d93ff64a84bf7f2f62cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
