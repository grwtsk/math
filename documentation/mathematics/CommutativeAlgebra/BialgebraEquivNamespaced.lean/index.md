# Bialgebra Equiv Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ba3fbe3cfee5592cb944acf07a6be4af07ce8ca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/BialgebraEquivNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgEquiv](declarations/bialgequiv.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [BialgEquivClass](declarations/bialgequivclass.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toBialgEquiv](declarations/tobialgequiv.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instCoeToBialgEquiv](declarations/instcoetobialgequiv.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toBialgHom](declarations/tobialghom.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toAlgEquiv](declarations/toalgequiv.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toEquiv](declarations/toequiv.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toEquiv_injective](declarations/toequiv-injective.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toEquiv_inj](declarations/toequiv-inj.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toBialgHom_injective](declarations/tobialghom-injective.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toBialgHom_inj](declarations/tobialghom-inj.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_mk](declarations/coe-mk.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_coe](declarations/coe-coe.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toCoalgEquiv_eq_coe](declarations/tocoalgequiv-eq-coe.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toBialgHom_eq_coe](declarations/tobialghom-eq-coe.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toAlgEquiv_eq_coe](declarations/toalgequiv-eq-coe.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_toCoalgEquiv](declarations/coe-tocoalgequiv.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_toBialgHom](declarations/coe-tobialghom.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_toAlgEquiv](declarations/coe-toalgequiv.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toCoalgEquiv_toCoalgHom](declarations/tocoalgequiv-tocoalghom.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toBialgHom_toAlgHom](declarations/tobialghom-toalghom.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ext](declarations/ext.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [congr_arg](declarations/congr-arg.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [congr_fun](declarations/congr-fun.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Simps.apply](declarations/simps-apply.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [refl](declarations/refl.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [refl_toCoalgEquiv](declarations/refl-tocoalgequiv.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [refl_toBialgHom](declarations/refl-tobialghom.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [symm](declarations/symm.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [symm_toCoalgEquiv](declarations/symm-tocoalgequiv.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [invFun_eq_symm](declarations/invfun-eq-symm.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_toEquiv_symm](declarations/coe-toequiv-symm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trans](declarations/trans.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [trans_toCoalgEquiv](declarations/trans-tocoalgequiv.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [trans_toBialgHom](declarations/trans-tobialghom.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_toEquiv_trans](declarations/coe-toequiv-trans.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ofBialgHom](declarations/ofbialghom.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_ofBialgHom](declarations/coe-ofbialghom.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ofBialgHom_symm](declarations/ofbialghom-symm.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ofBijective](declarations/ofbijective.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_ofBijective](declarations/coe-ofbijective.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=217bc3f321e6f113179eccad96699f2d2ea6a39865d1b57cf858a1d47625cfbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
