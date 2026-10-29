# Bilinear Form Orthogonal

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1767ed927c2ad3dd40379d94fc1914d41d44ef10`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormOrthogonal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrtho](declarations/isortho.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isOrtho_def](declarations/isortho-def.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isOrtho_zero_left](declarations/isortho-zero-left.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isOrtho_zero_right](declarations/isortho-zero-right.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ne_zero_of_not_isOrtho_self](declarations/ne-zero-of-not-isortho-self.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsRefl.ortho_comm](declarations/isrefl-ortho-comm.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsAlt.ortho_comm](declarations/isalt-ortho-comm.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsSymm.ortho_comm](declarations/issymm-ortho-comm.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [iIsOrtho](declarations/iisortho.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [iIsOrtho_def](declarations/iisortho-def.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isOrtho_smul_left](declarations/isortho-smul-left.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isOrtho_smul_right](declarations/isortho-smul-right.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [linearIndependent_of_iIsOrtho](declarations/linearindependent-of-iisortho.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [orthogonal](declarations/orthogonal.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_orthogonal_iff](declarations/mem-orthogonal-iff.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [orthogonal_bot](declarations/orthogonal-bot.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [orthogonal_le](declarations/orthogonal-le.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [le_orthogonal_orthogonal](declarations/le-orthogonal-orthogonal.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [orthogonal_top_eq_ker](declarations/orthogonal-top-eq-ker.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [orthogonal_top_eq_bot](declarations/orthogonal-top-eq-bot.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](declarations/span-singleton-inf-orthogonal-eq-bot.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [orthogonal_span_singleton_eq_toLin_ker](declarations/orthogonal-span-singleton-eq-tolin-ker.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [span_singleton_sup_orthogonal_eq_top](declarations/span-singleton-sup-orthogonal-eq-top.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isCompl_span_singleton_orthogonal](declarations/iscompl-span-singleton-orthogonal.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nondegenerate_restrict_of_disjoint_orthogonal](declarations/nondegenerate-restrict-of-disjoint-orthogonal.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iIsOrtho.not_isOrtho_basis_self_of_nondegenerate](declarations/iisortho-not-isortho-basis-self-of-nondegenerate.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self](declarations/iisortho-nondegenerate-iff-not-isortho-basis-self.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toLin_restrict_ker_eq_inf_orthogonal](declarations/tolin-restrict-ker-eq-inf-orthogonal.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toLin_restrict_range_dualCoannihilator_eq_orthogonal](declarations/tolin-restrict-range-dualcoannihilator-eq-orthogonal.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [ker_restrict_eq_of_codisjoint](declarations/ker-restrict-eq-of-codisjoint.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [inf_orthogonal_self_le_ker_restrict](declarations/inf-orthogonal-self-le-ker-restrict.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finrank_add_finrank_orthogonal](declarations/finrank-add-finrank-orthogonal.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [finrank_orthogonal](declarations/finrank-orthogonal.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [orthogonal_orthogonal](declarations/orthogonal-orthogonal.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isCompl_orthogonal_iff_disjoint](declarations/iscompl-orthogonal-iff-disjoint.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isCompl_orthogonal_of_restrict_nondegenerate](declarations/iscompl-orthogonal-of-restrict-nondegenerate.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [restrict_nondegenerate_iff_isCompl_orthogonal](declarations/restrict-nondegenerate-iff-iscompl-orthogonal.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [orthogonal_eq_top_iff](declarations/orthogonal-eq-top-iff.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [eq_top_of_restrict_nondegenerate_of_orthogonal_eq_bot](declarations/eq-top-of-restrict-nondegenerate-of-orthogonal-eq-bot.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [orthogonal_eq_bot_iff](declarations/orthogonal-eq-bot-iff.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [restrict_nondegenerate_orthogonal_spanSingleton](declarations/restrict-nondegenerate-orthogonal-spansingleton.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e971d92f117a3e5283651c1bb501a6687f3faccccefce8b7c2b88fbcf1b34252 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
