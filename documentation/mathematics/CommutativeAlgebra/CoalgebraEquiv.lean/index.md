# Coalgebra Equiv

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fceacb1e3816cbae7ca1ff9a08194f34dc6b1ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CoalgebraEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CoalgEquiv](declarations/coalgequiv.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [CoalgEquivClass](declarations/coalgequivclass.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toCoalgEquiv](declarations/tocoalgequiv.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instCoeToCoalgEquiv](declarations/instcoetocoalgequiv.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toEquiv](declarations/toequiv.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toEquiv_injective](declarations/toequiv-injective.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toEquiv_inj](declarations/toequiv-inj.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toCoalgHom_injective](declarations/tocoalghom-injective.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toCoalgHom_inj](declarations/tocoalghom-inj.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_mk](declarations/coe-mk.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_coe](declarations/coe-coe.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toLinearEquiv_eq_coe](declarations/tolinearequiv-eq-coe.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toCoalgHom_eq_coe](declarations/tocoalghom-eq-coe.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_toLinearEquiv](declarations/coe-tolinearequiv.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_toCoalgHom](declarations/coe-tocoalghom.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toLinearEquiv_toLinearMap](declarations/tolinearequiv-tolinearmap.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ext](declarations/ext.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [congr_arg](declarations/congr-arg.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [congr_fun](declarations/congr-fun.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [symm](declarations/symm.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Simps.apply](declarations/simps-apply.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [refl](declarations/refl.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [refl_toLinearEquiv](declarations/refl-tolinearequiv.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [refl_toCoalgHom](declarations/refl-tocoalghom.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [symm_toLinearEquiv](declarations/symm-tolinearequiv.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_symm_toLinearEquiv](declarations/coe-symm-tolinearequiv.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [symm_toCoalgHom](declarations/symm-tocoalghom.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [invFun_eq_symm](declarations/invfun-eq-symm.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_toEquiv_symm](declarations/coe-toequiv-symm.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [trans](declarations/trans.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [trans_toLinearEquiv](declarations/trans-tolinearequiv.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [trans_toCoalgHom](declarations/trans-tocoalghom.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coe_toEquiv_trans](declarations/coe-toequiv-trans.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ofCoalgHom](declarations/ofcoalghom.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coe_ofCoalgHom](declarations/coe-ofcoalghom.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ofCoalgHom_symm](declarations/ofcoalghom-symm.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ofBijective](declarations/ofbijective.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_ofBijective](declarations/coe-ofbijective.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [toCoalgebra](declarations/tocoalgebra.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bba3a17c1ea6068b0d336216db15d09aa4a4f5d145526517dc487af58488239 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
