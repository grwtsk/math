# Cyclotomic Primitive Roots

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1560a04efc6897413f45a9477aecffa5cc80e3d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/CyclotomicPrimitiveRoots.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [zeta](declarations/zeta.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [zeta_spec](declarations/zeta-spec.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [aeval_zeta](declarations/aeval-zeta.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [zeta_isRoot](declarations/zeta-isroot.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zeta_pow](declarations/zeta-pow.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [powerBasis](declarations/powerbasis.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [powerBasis_gen_mem_adjoin_zeta_sub_one](declarations/powerbasis-gen-mem-adjoin-zeta-sub-one.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [subOnePowerBasis](declarations/subonepowerbasis.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [embeddingsEquivPrimitiveRoots](declarations/embeddingsequivprimitiveroots.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [embeddingsEquivPrimitiveRoots_apply_coe](declarations/embeddingsequivprimitiveroots-apply-coe.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finrank](declarations/finrank.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [norm_eq_neg_one_pow](declarations/norm-eq-neg-one-pow.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [norm_eq_one](declarations/norm-eq-one.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_eq_one_of_linearly_ordered](declarations/norm-eq-one-of-linearly-ordered.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [norm_of_cyclotomic_irreducible](declarations/norm-of-cyclotomic-irreducible.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sub_one_norm_eq_eval_cyclotomic](declarations/sub-one-norm-eq-eval-cyclotomic.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sub_one_norm_isPrimePow](declarations/sub-one-norm-isprimepow.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [minpoly_sub_one_eq_cyclotomic_comp](declarations/minpoly-sub-one-eq-cyclotomic-comp.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [pow_sub_one_norm_prime_pow_ne_two](declarations/pow-sub-one-norm-prime-pow-ne-two.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pow_sub_one_norm_prime_ne_two](declarations/pow-sub-one-norm-prime-ne-two.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sub_one_norm_prime_ne_two](declarations/sub-one-norm-prime-ne-two.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sub_one_norm_prime](declarations/sub-one-norm-prime.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pow_sub_one_norm_two](declarations/pow-sub-one-norm-two.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sub_one_norm_two](declarations/sub-one-norm-two.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pow_sub_one_norm_prime_pow_of_ne_zero](declarations/pow-sub-one-norm-prime-pow-of-ne-zero.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [norm_zeta_eq_one](declarations/norm-zeta-eq-one.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isPrimePow_norm_zeta_sub_one](declarations/isprimepow-norm-zeta-sub-one.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prime_ne_two_pow_norm_zeta_pow_sub_one](declarations/prime-ne-two-pow-norm-zeta-pow-sub-one.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [prime_ne_two_pow_norm_zeta_sub_one](declarations/prime-ne-two-pow-norm-zeta-sub-one.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [prime_ne_two_norm_zeta_sub_one](declarations/prime-ne-two-norm-zeta-sub-one.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [two_pow_norm_zeta_sub_one](declarations/two-pow-norm-zeta-sub-one.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a70b8e64a6b81550c2eeff681dd45f82caa17a2a9b3cd278eb2746b95e87a49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
