# Linear Algebra Projection

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b5d3bccabca45bd6a4d9a3a9a4fcbfd01ce2039`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProjection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_id_sub_eq_of_proj](declarations/ker-id-sub-eq-of-proj.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [range_eq_of_proj](declarations/range-eq-of-proj.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isCompl_of_proj](declarations/iscompl-of-proj.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [quotientEquivOfIsCompl](declarations/quotientequivofiscompl.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [quotientEquivOfIsCompl_symm_apply](declarations/quotientequivofiscompl-symm-apply.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [quotientEquivOfIsCompl_apply_mk_coe](declarations/quotientequivofiscompl-apply-mk-coe.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mk_quotientEquivOfIsCompl_apply](declarations/mk-quotientequivofiscompl-apply.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [prodEquivOfIsCompl](declarations/prodequivofiscompl.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_prodEquivOfIsCompl](declarations/coe-prodequivofiscompl-source-edition-2.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_prodEquivOfIsCompl'](declarations/coe-prodequivofiscompl.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prodEquivOfIsCompl_symm_apply_left](declarations/prodequivofiscompl-symm-apply-left.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [prodEquivOfIsCompl_symm_apply_right](declarations/prodequivofiscompl-symm-apply-right.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [prodEquivOfIsCompl_symm_apply_fst_eq_zero](declarations/prodequivofiscompl-symm-apply-fst-eq-zero.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [prodEquivOfIsCompl_symm_apply_snd_eq_zero](declarations/prodequivofiscompl-symm-apply-snd-eq-zero.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [prodComm_trans_prodEquivOfIsCompl](declarations/prodcomm-trans-prodequivofiscompl.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [linearProjOfIsCompl](declarations/linearprojofiscompl.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [linearProjOfIsCompl_apply_left](declarations/linearprojofiscompl-apply-left-source-edition-2.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [linearProjOfIsCompl_range](declarations/linearprojofiscompl-range.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [linearProjOfIsCompl_surjective](declarations/linearprojofiscompl-surjective.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linearProjOfIsCompl_apply_eq_zero_iff](declarations/linearprojofiscompl-apply-eq-zero-iff.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [linearProjOfIsCompl_apply_right'](declarations/linearprojofiscompl-apply-right.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [linearProjOfIsCompl_apply_right](declarations/linearprojofiscompl-apply-right-source-edition-2.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [linearProjOfIsCompl_ker](declarations/linearprojofiscompl-ker.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [linearProjOfIsCompl_comp_subtype](declarations/linearprojofiscompl-comp-subtype.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [linearProjOfIsCompl_idempotent](declarations/linearprojofiscompl-idempotent.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [existsUnique_add_of_isCompl_prod](declarations/existsunique-add-of-iscompl-prod.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [existsUnique_add_of_isCompl](declarations/existsunique-add-of-iscompl.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [linear_proj_add_linearProjOfIsCompl_eq_self](declarations/linear-proj-add-linearprojofiscompl-eq-self.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [linearProjOfIsCompl](declarations/linearprojofiscompl-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [linearProjOfIsCompl_apply_left](declarations/linearprojofiscompl-apply-left.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [ofIsCompl](declarations/ofiscompl.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ofIsCompl_left_apply](declarations/ofiscompl-left-apply.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ofIsCompl_right_apply](declarations/ofiscompl-right-apply.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ofIsCompl_eq](declarations/ofiscompl-eq.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ofIsCompl_eq'](declarations/ofiscompl-eq-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ofIsCompl_zero](declarations/ofiscompl-zero.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ofIsCompl_add](declarations/ofiscompl-add.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ofIsCompl_smul](declarations/ofiscompl-smul.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [ofIsComplProd](declarations/ofiscomplprod.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ofIsComplProd_apply](declarations/ofiscomplprod-apply.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ofIsComplProdEquiv](declarations/ofiscomplprodequiv.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [linearProjOfIsCompl_of_proj](declarations/linearprojofiscompl-of-proj.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [equivProdOfSurjectiveOfIsCompl](declarations/equivprodofsurjectiveofiscompl.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_equivProdOfSurjectiveOfIsCompl](declarations/coe-equivprodofsurjectiveofiscompl.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [equivProdOfSurjectiveOfIsCompl_apply](declarations/equivprodofsurjectiveofiscompl-apply.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [isComplEquivProj](declarations/iscomplequivproj.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_isComplEquivProj_apply](declarations/coe-iscomplequivproj-apply.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_isComplEquivProj_symm_apply](declarations/coe-iscomplequivproj-symm-apply.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isIdempotentElemEquiv](declarations/isidempotentelemequiv.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [IsProj](declarations/isproj.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isProj_iff_isIdempotentElem](declarations/isproj-iff-isidempotentelem.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [codRestrict](declarations/codrestrict.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [codRestrict_apply](declarations/codrestrict-apply.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [codRestrict_apply_cod](declarations/codrestrict-apply-cod.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [codRestrict_ker](declarations/codrestrict-ker.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isCompl](declarations/iscompl.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [eq_conj_prod_map'](declarations/eq-conj-prod-map.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsProj.eq_conj_prodMap](declarations/isproj-eq-conj-prodmap.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57cd9ae6f4dbf825c9f36ac321d18c2e0c8a975240a51fff38b8a6c43d693bec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
