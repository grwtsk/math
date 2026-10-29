# Bialgebra Equiv

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `252a202da9817927ff690f004427d7e619f7f659`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/BialgebraEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgEquiv](declarations/bialgequiv.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [BialgEquivClass](declarations/bialgequivclass.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toBialgEquiv](declarations/tobialgequiv.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instCoeToBialgEquiv](declarations/instcoetobialgequiv.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toBialgHom](declarations/tobialghom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toAlgEquiv](declarations/toalgequiv.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toEquiv](declarations/toequiv.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toEquiv_injective](declarations/toequiv-injective.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toEquiv_inj](declarations/toequiv-inj.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toBialgHom_injective](declarations/tobialghom-injective.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toBialgHom_inj](declarations/tobialghom-inj.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_mk](declarations/coe-mk.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_coe](declarations/coe-coe.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toCoalgEquiv_eq_coe](declarations/tocoalgequiv-eq-coe.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toBialgHom_eq_coe](declarations/tobialghom-eq-coe.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toAlgEquiv_eq_coe](declarations/toalgequiv-eq-coe.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_toCoalgEquiv](declarations/coe-tocoalgequiv.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_toBialgHom](declarations/coe-tobialghom.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_toAlgEquiv](declarations/coe-toalgequiv.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toCoalgEquiv_toCoalgHom](declarations/tocoalgequiv-tocoalghom.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toBialgHom_toAlgHom](declarations/tobialghom-toalghom.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ext](declarations/ext.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [congr_arg](declarations/congr-arg.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [congr_fun](declarations/congr-fun.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Simps.apply](declarations/simps-apply.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [refl](declarations/refl.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [refl_toCoalgEquiv](declarations/refl-tocoalgequiv.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [refl_toBialgHom](declarations/refl-tobialghom.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [symm](declarations/symm.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [symm_toCoalgEquiv](declarations/symm-tocoalgequiv.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [invFun_eq_symm](declarations/invfun-eq-symm.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_toEquiv_symm](declarations/coe-toequiv-symm.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trans](declarations/trans.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [trans_toCoalgEquiv](declarations/trans-tocoalgequiv.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [trans_toBialgHom](declarations/trans-tobialghom.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_toEquiv_trans](declarations/coe-toequiv-trans.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ofBialgHom](declarations/ofbialghom.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_ofBialgHom](declarations/coe-ofbialghom.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ofBialgHom_symm](declarations/ofbialghom-symm.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ofBijective](declarations/ofbijective.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_ofBijective](declarations/coe-ofbijective.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb75f19c8982032dca68932f443d8e23793e989e2b37d03b024b36e2f1cb7aed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
