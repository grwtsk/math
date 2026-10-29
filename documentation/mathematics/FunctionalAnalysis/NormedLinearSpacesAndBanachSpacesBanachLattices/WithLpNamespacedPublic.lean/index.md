# With Lp Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79d4744242146e71407cd590eff792d7764305ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [WithLp](declarations/withlp.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WithLp.delabToLp](declarations/withlp-delabtolp.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [equiv](declarations/equiv.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [equiv_symm_apply](declarations/equiv-symm-apply.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instNontrivial](declarations/instnontrivial.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instUnique](declarations/instunique.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instDecidableEq](declarations/instdecidableeq.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instSMul](declarations/instsmul.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instMulAction](declarations/instmulaction.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ofLp_toLp](declarations/oflp-tolp.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toLp_ofLp](declarations/tolp-oflp.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ext_iff](declarations/ext-iff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ofLp_surjective](declarations/oflp-surjective.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toLp_surjective](declarations/tolp-surjective.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [ofLp_injective](declarations/oflp-injective.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toLp_injective](declarations/tolp-injective.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [ofLp_bijective](declarations/oflp-bijective.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [toLp_bijective](declarations/tolp-bijective.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [map](declarations/map.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_id](declarations/map-id.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_comp](declarations/map-comp.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [congr](declarations/congr.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_congr](declarations/coe-congr.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [congr_refl](declarations/congr-refl.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [congr_symm](declarations/congr-symm.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [congr_trans](declarations/congr-trans.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [toLp_zero](declarations/tolp-zero.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ofLp_zero](declarations/oflp-zero.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [toLp_add](declarations/tolp-add.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [ofLp_add](declarations/oflp-add.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [toLp_sub](declarations/tolp-sub.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [ofLp_sub](declarations/oflp-sub.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [toLp_neg](declarations/tolp-neg.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [ofLp_neg](declarations/oflp-neg.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [toLp_eq_zero](declarations/tolp-eq-zero.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [ofLp_eq_zero](declarations/oflp-eq-zero.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [toLp_smul](declarations/tolp-smul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [ofLp_smul](declarations/oflp-smul.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [addEquiv](declarations/addequiv.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [coe_addEquiv](declarations/coe-addequiv.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [coe_symm_addEquiv](declarations/coe-symm-addequiv.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [ofLp_sum](declarations/oflp-sum.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [toLp_sum](declarations/tolp-sum.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [ofLp_listSum](declarations/oflp-listsum.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [toLp_listSum](declarations/tolp-listsum.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [ofLp_multisetSum](declarations/oflp-multisetsum.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [toLp_multisetSum](declarations/tolp-multisetsum.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [instDistribMulAction](declarations/instdistribmulaction.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [instModule](declarations/instmodule.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [linearEquiv](declarations/linearequiv.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [coe_linearEquiv](declarations/coe-linearequiv.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [coe_symm_linearEquiv](declarations/coe-symm-linearequiv.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [toAddEquiv_linearEquiv](declarations/toaddequiv-linearequiv.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [instModuleFinite](declarations/instmodulefinite.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [withLpMap](declarations/withlpmap.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_withLpMap](declarations/coe-withlpmap.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [withLpMap_id](declarations/withlpmap-id.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [withLpMap_comp](declarations/withlpmap-comp.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [withLpCongr](declarations/withlpcongr.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_withLpCongr](declarations/coe-withlpcongr.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [withLpCongr_symm](declarations/withlpcongr-symm.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [withLpCongr_refl](declarations/withlpcongr-refl.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [withLpCongr_trans](declarations/withlpcongr-trans.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cdf72a5877cf5ce49e967589e8a4faa1cc65ae9a4525af926c3123865cf2546 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
