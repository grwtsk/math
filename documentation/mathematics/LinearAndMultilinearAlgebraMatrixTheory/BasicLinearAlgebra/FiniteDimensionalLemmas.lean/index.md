# Finite Dimensional Lemmas

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b40f5178b41f8e87b4c73a05bb33f11fe249e51`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalLemmas.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [finrank_lt](declarations/finrank-lt.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [finrank_sup_add_finrank_inf_eq](declarations/finrank-sup-add-finrank-inf-eq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [finrank_add_le_finrank_add_finrank](declarations/finrank-add-le-finrank-add-finrank.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [finrank_add_finrank_le_of_disjoint](declarations/finrank-add-finrank-le-of-disjoint.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eq_top_of_disjoint](declarations/eq-top-of-disjoint.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isCompl_iff_disjoint](declarations/iscompl-iff-disjoint.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [LinearEquiv.quotEquivOfEquiv](declarations/linearequiv-quotequivofequiv.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LinearEquiv.quotEquivOfQuotEquiv](declarations/linearequiv-quotequivofquotequiv.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [finrank_range_add_finrank_ker](declarations/finrank-range-add-finrank-ker.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ker_ne_bot_of_finrank_lt](declarations/ker-ne-bot-of-finrank-lt.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [injective_iff_surjective_of_finrank_eq_finrank](declarations/injective-iff-surjective-of-finrank-eq-finrank.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ker_eq_bot_iff_range_eq_top_of_finrank_eq_finrank](declarations/ker-eq-bot-iff-range-eq-top-of-finrank-eq-finrank.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [linearEquivOfInjective](declarations/linearequivofinjective.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [linearEquivOfInjective_apply](declarations/linearequivofinjective-apply.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finrank_lt_finrank_of_lt](declarations/finrank-lt-finrank-of-lt.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finrank_strictMono](declarations/finrank-strictmono.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [finrank_add_eq_of_isCompl](declarations/finrank-add-eq-of-iscompl.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [LinearIndependent.span_eq_top_of_card_eq_finrank'](declarations/linearindependent-span-eq-top-of-card-eq-finrank.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [LinearIndependent.span_eq_top_of_card_eq_finrank](declarations/linearindependent-span-eq-top-of-card-eq-finrank-source-edition-2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [basisOfLinearIndependentOfCardEqFinrank](declarations/basisoflinearindependentofcardeqfinrank.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_basisOfLinearIndependentOfCardEqFinrank](declarations/coe-basisoflinearindependentofcardeqfinrank.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [basisOfPiSpaceOfLinearIndependent](declarations/basisofpispaceoflinearindependent.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_basisOfPiSpaceOfLinearIndependent](declarations/coe-basisofpispaceoflinearindependent.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [finsetBasisOfLinearIndependentOfCardEqFinrank](declarations/finsetbasisoflinearindependentofcardeqfinrank.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_finsetBasisOfLinearIndependentOfCardEqFinrank](declarations/coe-finsetbasisoflinearindependentofcardeqfinrank.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [setBasisOfLinearIndependentOfCardEqFinrank](declarations/setbasisoflinearindependentofcardeqfinrank.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_setBasisOfLinearIndependentOfCardEqFinrank](declarations/coe-setbasisoflinearindependentofcardeqfinrank.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [is_simple_module_of_finrank_eq_one](declarations/is-simple-module-of-finrank-eq-one.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Subalgebra.isSimpleOrder_of_finrank](declarations/subalgebra-issimpleorder-of-finrank.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exists_ker_pow_eq_ker_pow_succ](declarations/exists-ker-pow-eq-ker-pow-succ.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ker_pow_eq_ker_pow_finrank_of_le](declarations/ker-pow-eq-ker-pow-finrank-of-le.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ker_pow_le_ker_pow_finrank](declarations/ker-pow-le-ker-pow-finrank.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6fe6fe08813233f40bc762e6e9a37b95f03de5784fff03b463c589787702586 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
