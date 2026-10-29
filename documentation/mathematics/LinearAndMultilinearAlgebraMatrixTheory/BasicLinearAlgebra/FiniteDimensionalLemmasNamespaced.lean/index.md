# Finite Dimensional Lemmas Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c592adb9eb5e1eec28da9bfa3ec335213e6977d0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalLemmasNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [finrank_lt](declarations/finrank-lt.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [finrank_sup_add_finrank_inf_eq](declarations/finrank-sup-add-finrank-inf-eq.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [finrank_add_le_finrank_add_finrank](declarations/finrank-add-le-finrank-add-finrank.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [finrank_add_finrank_le_of_disjoint](declarations/finrank-add-finrank-le-of-disjoint.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eq_top_of_disjoint](declarations/eq-top-of-disjoint.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isCompl_iff_disjoint](declarations/iscompl-iff-disjoint.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [LinearEquiv.quotEquivOfEquiv](declarations/linearequiv-quotequivofequiv.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LinearEquiv.quotEquivOfQuotEquiv](declarations/linearequiv-quotequivofquotequiv.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [finrank_range_add_finrank_ker](declarations/finrank-range-add-finrank-ker.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ker_ne_bot_of_finrank_lt](declarations/ker-ne-bot-of-finrank-lt.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [injective_iff_surjective_of_finrank_eq_finrank](declarations/injective-iff-surjective-of-finrank-eq-finrank.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ker_eq_bot_iff_range_eq_top_of_finrank_eq_finrank](declarations/ker-eq-bot-iff-range-eq-top-of-finrank-eq-finrank.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [linearEquivOfInjective](declarations/linearequivofinjective.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [linearEquivOfInjective_apply](declarations/linearequivofinjective-apply.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finrank_lt_finrank_of_lt](declarations/finrank-lt-finrank-of-lt.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finrank_strictMono](declarations/finrank-strictmono.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [finrank_add_eq_of_isCompl](declarations/finrank-add-eq-of-iscompl.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [LinearIndependent.span_eq_top_of_card_eq_finrank'](declarations/linearindependent-span-eq-top-of-card-eq-finrank-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [LinearIndependent.span_eq_top_of_card_eq_finrank](declarations/linearindependent-span-eq-top-of-card-eq-finrank.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [basisOfLinearIndependentOfCardEqFinrank](declarations/basisoflinearindependentofcardeqfinrank.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_basisOfLinearIndependentOfCardEqFinrank](declarations/coe-basisoflinearindependentofcardeqfinrank.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [basisOfPiSpaceOfLinearIndependent](declarations/basisofpispaceoflinearindependent.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_basisOfPiSpaceOfLinearIndependent](declarations/coe-basisofpispaceoflinearindependent.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [finsetBasisOfLinearIndependentOfCardEqFinrank](declarations/finsetbasisoflinearindependentofcardeqfinrank.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_finsetBasisOfLinearIndependentOfCardEqFinrank](declarations/coe-finsetbasisoflinearindependentofcardeqfinrank.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [setBasisOfLinearIndependentOfCardEqFinrank](declarations/setbasisoflinearindependentofcardeqfinrank.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_setBasisOfLinearIndependentOfCardEqFinrank](declarations/coe-setbasisoflinearindependentofcardeqfinrank.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [is_simple_module_of_finrank_eq_one](declarations/is-simple-module-of-finrank-eq-one.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Subalgebra.isSimpleOrder_of_finrank](declarations/subalgebra-issimpleorder-of-finrank.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exists_ker_pow_eq_ker_pow_succ](declarations/exists-ker-pow-eq-ker-pow-succ.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ker_pow_eq_ker_pow_finrank_of_le](declarations/ker-pow-eq-ker-pow-finrank-of-le.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ker_pow_le_ker_pow_finrank](declarations/ker-pow-le-ker-pow-finrank.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a067de1d7fe6375ab56d5a1491cc616ed6411f6b32382b05c7ab3ac95b87e43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
