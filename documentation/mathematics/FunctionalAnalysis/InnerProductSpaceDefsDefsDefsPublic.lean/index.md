# Inner Product Space Defs Defs Defs Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59c53f0d833e2920a53d96b06c36d59b7143c86a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceDefsDefsDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Inner](declarations/inner.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [InnerProductSpace](declarations/innerproductspace.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [PreInnerProductSpace.Core](declarations/preinnerproductspace-core.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [InnerProductSpace.Core](declarations/innerproductspace-core.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [PreInnerProductSpace.toCore](declarations/preinnerproductspace-tocore.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [InnerProductSpace.toCore](declarations/innerproductspace-tocore.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toPreInner'](declarations/topreinner.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [normSq](declarations/normsq.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [inner_conj_symm](declarations/inner-conj-symm.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inner_self_nonneg](declarations/inner-self-nonneg.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inner_self_im](declarations/inner-self-im.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inner_add_left](declarations/inner-add-left.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [inner_add_right](declarations/inner-add-right.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofReal_normSq_eq_inner_self](declarations/ofreal-normsq-eq-inner-self.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inner_re_symm](declarations/inner-re-symm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inner_im_symm](declarations/inner-im-symm.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inner_smul_left](declarations/inner-smul-left.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inner_smul_right](declarations/inner-smul-right.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inner_zero_left](declarations/inner-zero-left.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inner_zero_right](declarations/inner-zero-right.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inner_self_of_eq_zero](declarations/inner-self-of-eq-zero.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [normSq_eq_zero_of_eq_zero](declarations/normsq-eq-zero-of-eq-zero.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ne_zero_of_inner_self_ne_zero](declarations/ne-zero-of-inner-self-ne-zero.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inner_self_ofReal_re](declarations/inner-self-ofreal-re.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [norm_inner_symm](declarations/norm-inner-symm.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [inner_neg_left](declarations/inner-neg-left.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [inner_neg_right](declarations/inner-neg-right.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inner_sub_left](declarations/inner-sub-left.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [inner_sub_right](declarations/inner-sub-right.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inner_mul_symm_re_eq_norm](declarations/inner-mul-symm-re-eq-norm.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inner_add_add_self](declarations/inner-add-add-self.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inner_sub_sub_self](declarations/inner-sub-sub-self.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inner_smul_ofReal_left](declarations/inner-smul-ofreal-left.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inner_smul_ofReal_right](declarations/inner-smul-ofreal-right.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [re_inner_smul_ofReal_smul_self](declarations/re-inner-smul-ofreal-smul-self.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [cauchy_schwarz_aux'](declarations/cauchy-schwarz-aux-source-edition-2.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cauchy_schwarz_aux](declarations/cauchy-schwarz-aux.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inner_mul_inner_self_le](declarations/inner-mul-inner-self-le.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toNorm](declarations/tonorm.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_eq_sqrt_re_inner](declarations/norm-eq-sqrt-re-inner.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [inner_self_eq_norm_mul_norm](declarations/inner-self-eq-norm-mul-norm.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sqrt_normSq_eq_norm](declarations/sqrt-normsq-eq-norm.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [norm_inner_le_norm](declarations/norm-inner-le-norm.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [toSeminormedAddCommGroup](declarations/toseminormedaddcommgroup.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toNormedSpace](declarations/tonormedspace.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [toSeminormedSpaceCore](declarations/toseminormedspacecore.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [toInner'](declarations/toinner.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [inner_self_eq_zero](declarations/inner-self-eq-zero.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [normSq_eq_zero](declarations/normsq-eq-zero.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [inner_self_ne_zero](declarations/inner-self-ne-zero.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toNormedAddCommGroup](declarations/tonormedaddcommgroup.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [toNormedSpaceCore](declarations/tonormedspacecore.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [topology_eq](declarations/topology-eq.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [toNormedAddCommGroupOfTopology](declarations/tonormedaddcommgroupoftopology.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [toNormedSpaceOfTopology](declarations/tonormedspaceoftopology.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [InnerProductSpace.ofCore](declarations/innerproductspace-ofcore.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [InnerProductSpace.ofCoreOfTopology](declarations/innerproductspace-ofcoreoftopology.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [HilbertSpace](declarations/hilbertspace.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [inner_eq_zero](declarations/inner-eq-zero.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f75dff2bd28f96a6af3dd42c4d9167f3c198cd736c257500a0605a867fcffc4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
