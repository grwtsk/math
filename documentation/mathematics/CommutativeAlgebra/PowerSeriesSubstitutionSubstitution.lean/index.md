# Power Series Substitution Substitution

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85e5a401fe760068af6d4189c7386ba2154b3bf5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PowerSeriesSubstitutionSubstitution.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasSubst](declarations/hassubst.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [hasSubst_iff](declarations/hassubst-iff.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [HasSubst.const](declarations/hassubst-const.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasSubst_iff_hasEval_of_discreteTopology](declarations/hassubst-iff-haseval-of-discretetopology.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasSubst.hasEval](declarations/hassubst-haseval.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasSubst.of_constantCoeff_zero](declarations/hassubst-of-constantcoeff-zero.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasSubst.of_constantCoeff_zero'](declarations/hassubst-of-constantcoeff-zero-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasSubst.X](declarations/hassubst-x.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [HasSubst.X'](declarations/hassubst-x-source-edition-2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasSubst.X_pow](declarations/hassubst-x-pow.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasSubst.monomial](declarations/hassubst-monomial-source-edition-2.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [HasSubst.monomial'](declarations/hassubst-monomial.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [HasSubst.zero](declarations/hassubst-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [HasSubst.zero'](declarations/hassubst-zero-source-edition-2.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [HasSubst.add](declarations/hassubst-add.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HasSubst.mul_left](declarations/hassubst-mul-left.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasSubst.mul_right](declarations/hassubst-mul-right.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasSubst.smul](declarations/hassubst-smul-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [HasSubst.ideal](declarations/hassubst-ideal.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HasSubst.smul'](declarations/hassubst-smul.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HasSubst.smul_X](declarations/hassubst-smul-x.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [HasSubst.smul_X'](declarations/hassubst-smul-x-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [subst](declarations/subst.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [substAlgHom](declarations/substalghom.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_substAlgHom](declarations/coe-substalghom.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [substAlgHom_eq_aeval](declarations/substalghom-eq-aeval.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [subst_add](declarations/subst-add.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [subst_pow](declarations/subst-pow.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [subst_mul](declarations/subst-mul.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [subst_smul](declarations/subst-smul.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeff_subst_finite](declarations/coeff-subst-finite-source-edition-2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coeff_subst_finite'](declarations/coeff-subst-finite.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coeff_subst](declarations/coeff-subst-source-edition-2.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coeff_subst'](declarations/coeff-subst.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [constantCoeff_subst](declarations/constantcoeff-subst.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [map_algebraMap_eq_subst_X](declarations/map-algebramap-eq-subst-x.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [_root_.Polynomial.toPowerSeries_toMvPowerSeries](declarations/root-polynomial-topowerseries-tomvpowerseries.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [substAlgHom_coe](declarations/substalghom-coe.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [substAlgHom_X](declarations/substalghom-x.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [subst_coe](declarations/subst-coe.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [subst_X](declarations/subst-x.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasSubst.comp](declarations/hassubst-comp.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [substAlgHom_comp_substAlgHom](declarations/substalghom-comp-substalghom.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [substAlgHom_comp_substAlgHom_apply](declarations/substalghom-comp-substalghom-apply.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [subst_comp_subst](declarations/subst-comp-subst.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [subst_comp_subst_apply](declarations/subst-comp-subst-apply.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [_root_.MvPowerSeries.rescaleUnit](declarations/root-mvpowerseries-rescaleunit.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=beb5fa4d59458e8458597f5a5c07d993d5ea7392fc6c74788a1489ce532268b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
