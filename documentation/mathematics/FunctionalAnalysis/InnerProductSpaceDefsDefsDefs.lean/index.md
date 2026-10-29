# Inner Product Space Defs Defs Defs

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b53a66066a81ec017b5e50074c6e7d68d44b972`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceDefsDefsDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Inner](declarations/inner.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [InnerProductSpace](declarations/innerproductspace.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [PreInnerProductSpace.Core](declarations/preinnerproductspace-core.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [InnerProductSpace.Core](declarations/innerproductspace-core.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [PreInnerProductSpace.toCore](declarations/preinnerproductspace-tocore.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [InnerProductSpace.toCore](declarations/innerproductspace-tocore.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toPreInner'](declarations/topreinner.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [normSq](declarations/normsq.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [inner_conj_symm](declarations/inner-conj-symm.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inner_self_nonneg](declarations/inner-self-nonneg.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inner_self_im](declarations/inner-self-im.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inner_add_left](declarations/inner-add-left.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [inner_add_right](declarations/inner-add-right.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofReal_normSq_eq_inner_self](declarations/ofreal-normsq-eq-inner-self.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inner_re_symm](declarations/inner-re-symm.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inner_im_symm](declarations/inner-im-symm.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inner_smul_left](declarations/inner-smul-left.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inner_smul_right](declarations/inner-smul-right.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inner_zero_left](declarations/inner-zero-left.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inner_zero_right](declarations/inner-zero-right.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inner_self_of_eq_zero](declarations/inner-self-of-eq-zero.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [normSq_eq_zero_of_eq_zero](declarations/normsq-eq-zero-of-eq-zero.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ne_zero_of_inner_self_ne_zero](declarations/ne-zero-of-inner-self-ne-zero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inner_self_ofReal_re](declarations/inner-self-ofreal-re.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [norm_inner_symm](declarations/norm-inner-symm.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [inner_neg_left](declarations/inner-neg-left.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [inner_neg_right](declarations/inner-neg-right.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inner_sub_left](declarations/inner-sub-left.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [inner_sub_right](declarations/inner-sub-right.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inner_mul_symm_re_eq_norm](declarations/inner-mul-symm-re-eq-norm.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inner_add_add_self](declarations/inner-add-add-self.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inner_sub_sub_self](declarations/inner-sub-sub-self.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inner_smul_ofReal_left](declarations/inner-smul-ofreal-left.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inner_smul_ofReal_right](declarations/inner-smul-ofreal-right.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [re_inner_smul_ofReal_smul_self](declarations/re-inner-smul-ofreal-smul-self.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [cauchy_schwarz_aux'](declarations/cauchy-schwarz-aux-source-edition-2.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cauchy_schwarz_aux](declarations/cauchy-schwarz-aux.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inner_mul_inner_self_le](declarations/inner-mul-inner-self-le.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toNorm](declarations/tonorm.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_eq_sqrt_re_inner](declarations/norm-eq-sqrt-re-inner.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [inner_self_eq_norm_mul_norm](declarations/inner-self-eq-norm-mul-norm.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sqrt_normSq_eq_norm](declarations/sqrt-normsq-eq-norm.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [norm_inner_le_norm](declarations/norm-inner-le-norm.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [toSeminormedAddCommGroup](declarations/toseminormedaddcommgroup.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toSeminormedSpace](declarations/toseminormedspace.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toInner'](declarations/toinner.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [inner_self_eq_zero](declarations/inner-self-eq-zero.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [normSq_eq_zero](declarations/normsq-eq-zero.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inner_self_ne_zero](declarations/inner-self-ne-zero.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [toNormedAddCommGroup](declarations/tonormedaddcommgroup.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toNormedSpace](declarations/tonormedspace.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [InnerProductSpace.ofCore](declarations/innerproductspace-ofcore.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [HilbertSpace](declarations/hilbertspace.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d4bdb84cff88ad6de3322455f22cd327f97ce1b505c3ab0b6383d17cda149aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
