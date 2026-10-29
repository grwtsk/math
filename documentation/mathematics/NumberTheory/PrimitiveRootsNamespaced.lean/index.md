# Primitive Roots Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd476bc7d52c740056c02129b6f1bb179acf61a2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/PrimitiveRootsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [zeta](declarations/zeta.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [zeta_spec](declarations/zeta-spec.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [aeval_zeta](declarations/aeval-zeta.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zeta_isRoot](declarations/zeta-isroot.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [zeta_pow](declarations/zeta-pow.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [powerBasis](declarations/powerbasis.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [powerBasis_gen_mem_adjoin_zeta_sub_one](declarations/powerbasis-gen-mem-adjoin-zeta-sub-one.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [subOnePowerBasis](declarations/subonepowerbasis.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [embeddingsEquivPrimitiveRoots](declarations/embeddingsequivprimitiveroots.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [embeddingsEquivPrimitiveRoots_apply_coe](declarations/embeddingsequivprimitiveroots-apply-coe.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [finrank](declarations/finrank.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Primitive Roots Namespaced](declarations/lcm-totient-le-finrank.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dvd_of_isCyclotomicExtension](declarations/dvd-of-iscyclotomicextension.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [exists_neg_pow_of_isOfFinOrder](declarations/exists-neg-pow-of-isoffinorder.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_pow_or_neg_mul_pow_of_isOfFinOrder](declarations/exists-pow-or-neg-mul-pow-of-isoffinorder.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [norm_eq_neg_one_pow](declarations/norm-eq-neg-one-pow.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [norm_eq_one](declarations/norm-eq-one.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [norm_eq_one_of_linearly_ordered](declarations/norm-eq-one-of-linearly-ordered.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [norm_of_cyclotomic_irreducible](declarations/norm-of-cyclotomic-irreducible.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sub_one_norm_eq_eval_cyclotomic](declarations/sub-one-norm-eq-eval-cyclotomic.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sub_one_norm_isPrimePow](declarations/sub-one-norm-isprimepow.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [minpoly_sub_one_eq_cyclotomic_comp](declarations/minpoly-sub-one-eq-cyclotomic-comp.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [norm_pow_sub_one_of_prime_pow_ne_two](declarations/norm-pow-sub-one-of-prime-pow-ne-two.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [norm_pow_sub_one_of_prime_ne_two](declarations/norm-pow-sub-one-of-prime-ne-two.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [norm_sub_one_of_prime_ne_two](declarations/norm-sub-one-of-prime-ne-two-source-edition-2.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [norm_sub_one_of_prime_ne_two'](declarations/norm-sub-one-of-prime-ne-two.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [norm_pow_sub_one_two](declarations/norm-pow-sub-one-two.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [norm_sub_one_two](declarations/norm-sub-one-two.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [norm_pow_sub_one_eq_prime_pow_of_ne_zero](declarations/norm-pow-sub-one-eq-prime-pow-of-ne-zero.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [norm_zeta_eq_one](declarations/norm-zeta-eq-one.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [norm_zeta_sub_one_of_isPrimePow](declarations/norm-zeta-sub-one-of-isprimepow.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [norm_zeta_pow_sub_one_of_prime_pow_ne_two](declarations/norm-zeta-pow-sub-one-of-prime-pow-ne-two.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [norm_zeta_pow_sub_one_of_prime_ne_two](declarations/norm-zeta-pow-sub-one-of-prime-ne-two.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [norm_zeta_sub_one_of_prime_ne_two](declarations/norm-zeta-sub-one-of-prime-ne-two.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_zeta_pow_sub_one_two](declarations/norm-zeta-pow-sub-one-two.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d853f26f13e32825a82d59fbcb3c0db4d324d73d92396b12e92f1d10e4e54ebc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
