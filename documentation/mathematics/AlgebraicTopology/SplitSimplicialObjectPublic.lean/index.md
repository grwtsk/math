# Split Simplicial Object Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe409de05b6c9367288315ce2c239d8ba39f5fb0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AlgebraicTopology/SplitSimplicialObjectPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [πSummand](declarations/summand.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cofan_inj_πSummand_eq_id](declarations/cofan-inj-summand-eq-id.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [cofan_inj_πSummand_eq_zero](declarations/cofan-inj-summand-eq-zero.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decomposition_id](declarations/decomposition-id.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [σ_comp_πSummand_id_eq_zero](declarations/comp-summand-id-eq-zero.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [cofan_inj_comp_PInfty_eq_zero](declarations/cofan-inj-comp-pinfty-eq-zero.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [comp_PInfty_eq_zero_iff](declarations/comp-pinfty-eq-zero-iff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [PInfty_comp_πSummand_id](declarations/pinfty-comp-summand-id.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [πSummand_comp_cofan_inj_id_comp_PInfty_eq_PInfty](declarations/summand-comp-cofan-inj-id-comp-pinfty-eq-pinfty.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [d](declarations/d.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ιSummand_comp_d_comp_πSummand_eq_zero](declarations/summand-comp-d-comp-summand-eq-zero.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [nondegComplex](declarations/nondegcomplex.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toKaroubiNondegComplexIsoN₁](declarations/tokaroubinondegcomplexison.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toKaroubiNondegComplexIsoN₁_hom_f_PInfty](declarations/tokaroubinondegcomplexison-hom-f-pinfty.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toKaroubiNondegComplexIsoN₁_hom_inv_id_f](declarations/tokaroubinondegcomplexison-hom-inv-id-f.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toNondegComplex](declarations/tonondegcomplex.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [fromNondegComplex](declarations/fromnondegcomplex.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [PInfty_toNondegComplex](declarations/pinfty-tonondegcomplex.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [fromNondegComplex_toNondegComplex](declarations/fromnondegcomplex-tonondegcomplex.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [toNondegComplex_f](declarations/tonondegcomplex-f.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fromNondegComplex_f](declarations/fromnondegcomplex-f.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [isSplitEpi_toNondegComplex](declarations/issplitepi-tonondegcomplex.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [isSplitMono_fromNondegComplex](declarations/issplitmono-fromnondegcomplex.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [toNondegComplex_fromNondegComplex](declarations/tonondegcomplex-fromnondegcomplex.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [homotopyEquivNondegComplex](declarations/homotopyequivnondegcomplex.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [nondegComplexFunctor](declarations/nondegcomplexfunctor.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toKaroubiNondegComplexFunctorIsoN₁](declarations/tokaroubinondegcomplexfunctorison.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c08cc3a37d8ede8957e5c5e2617e80d3e6a45c2a77b573314476b6c3d2a1fc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
