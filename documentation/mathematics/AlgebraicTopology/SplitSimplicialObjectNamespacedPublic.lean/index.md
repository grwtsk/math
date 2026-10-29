# Split Simplicial Object Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant2c5e6e0b5ac47d2a708df6490c9085ed23678eafe20d2d164fc63a93d13efcbf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2afe0272612932444de300e420c165223d829ac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AlgebraicTopology/SplitSimplicialObjectNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [πSummand](declarations/summand.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cofan_inj_πSummand_eq_id](declarations/cofan-inj-summand-eq-id.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [cofan_inj_πSummand_eq_zero](declarations/cofan-inj-summand-eq-zero.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decomposition_id](declarations/decomposition-id.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [σ_comp_πSummand_id_eq_zero](declarations/comp-summand-id-eq-zero.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [cofan_inj_comp_PInfty_eq_zero](declarations/cofan-inj-comp-pinfty-eq-zero.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [comp_PInfty_eq_zero_iff](declarations/comp-pinfty-eq-zero-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [PInfty_comp_πSummand_id](declarations/pinfty-comp-summand-id.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [πSummand_comp_cofan_inj_id_comp_PInfty_eq_PInfty](declarations/summand-comp-cofan-inj-id-comp-pinfty-eq-pinfty.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [d](declarations/d.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ιSummand_comp_d_comp_πSummand_eq_zero](declarations/summand-comp-d-comp-summand-eq-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [nondegComplex](declarations/nondegcomplex.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toKaroubiNondegComplexIsoN₁](declarations/tokaroubinondegcomplexison.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toKaroubiNondegComplexIsoN₁_hom_f_PInfty](declarations/tokaroubinondegcomplexison-hom-f-pinfty.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toKaroubiNondegComplexIsoN₁_hom_inv_id_f](declarations/tokaroubinondegcomplexison-hom-inv-id-f.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toNondegComplex](declarations/tonondegcomplex.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [fromNondegComplex](declarations/fromnondegcomplex.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [PInfty_toNondegComplex](declarations/pinfty-tonondegcomplex.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [fromNondegComplex_toNondegComplex](declarations/fromnondegcomplex-tonondegcomplex.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [toNondegComplex_f](declarations/tonondegcomplex-f.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fromNondegComplex_f](declarations/fromnondegcomplex-f.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [isSplitEpi_toNondegComplex](declarations/issplitepi-tonondegcomplex.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [isSplitMono_fromNondegComplex](declarations/issplitmono-fromnondegcomplex.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [toNondegComplex_fromNondegComplex](declarations/tonondegcomplex-fromnondegcomplex.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [homotopyEquivNondegComplex](declarations/homotopyequivnondegcomplex.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [nondegComplexFunctor](declarations/nondegcomplexfunctor.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toKaroubiNondegComplexFunctorIsoN₁](declarations/tokaroubinondegcomplexfunctorison.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=921accb37e9dd6862089b6cb44cff549edc9fe8922917ba661858e88c5ad76a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant2c5e6e0b5ac47d2a708df6490c9085ed23678eafe20d2d164fc63a93d13efcbf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
