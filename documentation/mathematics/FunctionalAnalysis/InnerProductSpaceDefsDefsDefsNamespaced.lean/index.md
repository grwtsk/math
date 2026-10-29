# Inner Product Space Defs Defs Defs Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e52275982c4e008c8b44ea460ffe569b865e9705`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceDefsDefsDefsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Inner](declarations/inner.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [InnerProductSpace](declarations/innerproductspace.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [PreInnerProductSpace.Core](declarations/preinnerproductspace-core.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [InnerProductSpace.Core](declarations/innerproductspace-core.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [PreInnerProductSpace.toCore](declarations/preinnerproductspace-tocore.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [InnerProductSpace.toCore](declarations/innerproductspace-tocore.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toPreInner'](declarations/topreinner.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [normSq](declarations/normsq.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [inner_conj_symm](declarations/inner-conj-symm.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inner_self_nonneg](declarations/inner-self-nonneg.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inner_self_im](declarations/inner-self-im.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inner_add_left](declarations/inner-add-left.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [inner_add_right](declarations/inner-add-right.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofReal_normSq_eq_inner_self](declarations/ofreal-normsq-eq-inner-self.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inner_re_symm](declarations/inner-re-symm.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inner_im_symm](declarations/inner-im-symm.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inner_smul_left](declarations/inner-smul-left.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inner_smul_right](declarations/inner-smul-right.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inner_zero_left](declarations/inner-zero-left.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inner_zero_right](declarations/inner-zero-right.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inner_self_of_eq_zero](declarations/inner-self-of-eq-zero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [normSq_eq_zero_of_eq_zero](declarations/normsq-eq-zero-of-eq-zero.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ne_zero_of_inner_self_ne_zero](declarations/ne-zero-of-inner-self-ne-zero.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inner_self_ofReal_re](declarations/inner-self-ofreal-re.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [norm_inner_symm](declarations/norm-inner-symm.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [inner_neg_left](declarations/inner-neg-left.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [inner_neg_right](declarations/inner-neg-right.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inner_sub_left](declarations/inner-sub-left.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [inner_sub_right](declarations/inner-sub-right.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inner_mul_symm_re_eq_norm](declarations/inner-mul-symm-re-eq-norm.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inner_add_add_self](declarations/inner-add-add-self.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inner_sub_sub_self](declarations/inner-sub-sub-self.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inner_smul_ofReal_left](declarations/inner-smul-ofreal-left.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inner_smul_ofReal_right](declarations/inner-smul-ofreal-right.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [re_inner_smul_ofReal_smul_self](declarations/re-inner-smul-ofreal-smul-self.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [cauchy_schwarz_aux'](declarations/cauchy-schwarz-aux-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cauchy_schwarz_aux](declarations/cauchy-schwarz-aux.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inner_mul_inner_self_le](declarations/inner-mul-inner-self-le.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toNorm](declarations/tonorm.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_eq_sqrt_re_inner](declarations/norm-eq-sqrt-re-inner.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [inner_self_eq_norm_mul_norm](declarations/inner-self-eq-norm-mul-norm.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sqrt_normSq_eq_norm](declarations/sqrt-normsq-eq-norm.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [norm_inner_le_norm](declarations/norm-inner-le-norm.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [toSeminormedAddCommGroup](declarations/toseminormedaddcommgroup.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toSeminormedSpace](declarations/toseminormedspace.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toInner'](declarations/toinner.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [inner_self_eq_zero](declarations/inner-self-eq-zero.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [normSq_eq_zero](declarations/normsq-eq-zero.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inner_self_ne_zero](declarations/inner-self-ne-zero.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [toNormedAddCommGroup](declarations/tonormedaddcommgroup.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toNormedSpace](declarations/tonormedspace.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [InnerProductSpace.ofCore](declarations/innerproductspace-ofcore.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [HilbertSpace](declarations/hilbertspace.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83d4fe4a898170e561140c15819fd2a8f6358e2973c74cb5a94e3f40094b2ccc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant7416141a097dc2d686a81319d9ec71e33f75d1e4ff3a8076bd21b1ced235bf48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
