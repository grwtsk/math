# Bilinear Form Orthogonal Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fec94e37175c4864d0d605d7f7cb7567896b6ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormOrthogonalPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrtho](declarations/isortho.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isOrtho_def](declarations/isortho-def.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isOrtho_zero_left](declarations/isortho-zero-left.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isOrtho_zero_right](declarations/isortho-zero-right.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ne_zero_of_not_isOrtho_self](declarations/ne-zero-of-not-isortho-self.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsRefl.eq_iff](declarations/isrefl-eq-iff.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsAlt.eq_iff](declarations/isalt-eq-iff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsSymm.eq_iff](declarations/issymm-eq-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [iIsOrtho](declarations/iisortho.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [iIsOrtho_def](declarations/iisortho-def.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isOrtho_smul_left](declarations/isortho-smul-left.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isOrtho_smul_right](declarations/isortho-smul-right.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [linearIndependent_of_iIsOrtho](declarations/linearindependent-of-iisortho.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [orthogonal](declarations/orthogonal.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_orthogonal_iff](declarations/mem-orthogonal-iff.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [orthogonal_bot](declarations/orthogonal-bot.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [orthogonal_le](declarations/orthogonal-le.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [le_orthogonal_orthogonal](declarations/le-orthogonal-orthogonal.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [orthogonal_top_eq_ker](declarations/orthogonal-top-eq-ker.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [orthogonal_top_eq_bot](declarations/orthogonal-top-eq-bot.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](declarations/span-singleton-inf-orthogonal-eq-bot.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [orthogonal_span_singleton_eq_toLin_ker](declarations/orthogonal-span-singleton-eq-tolin-ker.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [span_singleton_sup_orthogonal_eq_top](declarations/span-singleton-sup-orthogonal-eq-top.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isCompl_span_singleton_orthogonal](declarations/iscompl-span-singleton-orthogonal.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nondegenerate_restrict_of_disjoint_orthogonal](declarations/nondegenerate-restrict-of-disjoint-orthogonal.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iIsOrtho.not_isOrtho_basis_self_of_nondegenerate](declarations/iisortho-not-isortho-basis-self-of-nondegenerate.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self](declarations/iisortho-nondegenerate-iff-not-isortho-basis-self.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toLin_restrict_ker_eq_inf_ker](declarations/tolin-restrict-ker-eq-inf-ker.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toLin_restrict_ker_eq_inf_orthogonal](declarations/tolin-restrict-ker-eq-inf-orthogonal.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toLin_restrict_range_dualCoannihilator_eq_orthogonal](declarations/tolin-restrict-range-dualcoannihilator-eq-orthogonal.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [ker_restrict_eq_of_codisjoint](declarations/ker-restrict-eq-of-codisjoint.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [inf_orthogonal_self_le_ker_restrict](declarations/inf-orthogonal-self-le-ker-restrict.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finrank_add_finrank_orthogonal'](declarations/finrank-add-finrank-orthogonal.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finrank_add_finrank_orthogonal](declarations/finrank-add-finrank-orthogonal-source-edition-2.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [finrank_orthogonal](declarations/finrank-orthogonal.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [orthogonal_orthogonal](declarations/orthogonal-orthogonal.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [isCompl_orthogonal_iff_disjoint](declarations/iscompl-orthogonal-iff-disjoint.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isCompl_orthogonal_of_restrict_nondegenerate](declarations/iscompl-orthogonal-of-restrict-nondegenerate.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [restrict_nondegenerate_iff_isCompl_orthogonal](declarations/restrict-nondegenerate-iff-iscompl-orthogonal.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [orthogonal_eq_top_iff](declarations/orthogonal-eq-top-iff.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [eq_top_of_restrict_nondegenerate_of_orthogonal_eq_bot](declarations/eq-top-of-restrict-nondegenerate-of-orthogonal-eq-bot.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [orthogonal_eq_bot_iff](declarations/orthogonal-eq-bot-iff.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [restrict_nondegenerate_orthogonal_spanSingleton](declarations/restrict-nondegenerate-orthogonal-spansingleton.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b93b5ffdf13ea7771bb06121437037479801b7d77980ef026da1cd4930629c19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant26a368d6a35b5a460cf9d119ec4cd0aabf5769fef5a9e149811d992e06f6e736.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
