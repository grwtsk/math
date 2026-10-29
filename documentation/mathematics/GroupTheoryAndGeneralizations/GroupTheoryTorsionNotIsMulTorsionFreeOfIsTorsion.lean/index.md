# Group Theory Torsion Not Is Mul Torsion Free Of Is Torsion

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49a039de16c3052a309ddaf001f9d87bc151477a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTheoryTorsionNotIsMulTorsionFreeOfIsTorsion.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTorsion](declarations/istorsion.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [not_isTorsion_iff](declarations/not-istorsion-iff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsTorsion.group](declarations/istorsion-group.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsTorsion.subgroup](declarations/istorsion-subgroup.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsTorsion.of_surjective](declarations/istorsion-of-surjective.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsTorsion.extension_closed](declarations/istorsion-extension-closed.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsTorsion.quotient_iff](declarations/istorsion-quotient-iff.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ExponentExists.isTorsion](declarations/exponentexists-istorsion.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsTorsion.exponentExists](declarations/istorsion-exponentexists.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isTorsion_of_finite](declarations/istorsion-of-finite.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [not_isMulTorsionFree_of_isTorsion](declarations/not-ismultorsionfree-of-istorsion.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [not_isTorsion_of_isMulTorsionFree](declarations/not-istorsion-of-ismultorsionfree.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsTorsion.module_of_torsion](declarations/istorsion-module-of-torsion.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsTorsion.module_of_finite](declarations/istorsion-module-of-finite.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [torsion](declarations/torsion.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [torsion.isTorsion](declarations/torsion-istorsion.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [primaryComponent](declarations/primarycomponent.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [primaryComponent.exists_orderOf_eq_prime_pow](declarations/primarycomponent-exists-orderof-eq-prime-pow.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [primaryComponent.disjoint](declarations/primarycomponent-disjoint.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [torsion_eq_top](declarations/torsion-eq-top.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [torsionMulEquiv](declarations/torsionmulequiv.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [torsionMulEquiv_apply](declarations/torsionmulequiv-apply.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [torsionMulEquiv_symm_apply_coe](declarations/torsionmulequiv-symm-apply-coe.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Torsion.ofTorsion](declarations/torsion-oftorsion.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [torsion](declarations/torsion-source-edition-2.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [torsion_eq_torsion_submonoid](declarations/torsion-eq-torsion-submonoid.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_torsion](declarations/mem-torsion.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isMulTorsionFree_iff_torsion_eq_bot](declarations/ismultorsionfree-iff-torsion-eq-bot.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [primaryComponent](declarations/primarycomponent-source-edition-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [primaryComponent.isPGroup](declarations/primarycomponent-ispgroup.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [IsTorsionFree](declarations/istorsionfree.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [not_isTorsionFree_iff](declarations/not-istorsionfree-iff.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [isTorsionFree_of_subsingleton](declarations/istorsionfree-of-subsingleton.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isTorsionFree_iff_torsion_eq_bot](declarations/istorsionfree-iff-torsion-eq-bot.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsTorsion.not_torsion_free](declarations/istorsion-not-torsion-free.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsTorsionFree.not_torsion](declarations/istorsionfree-not-torsion.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsTorsionFree.subgroup](declarations/istorsionfree-subgroup.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsTorsionFree.prod](declarations/istorsionfree-prod.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [_root_.QuotientGroup.instIsMulTorsionFree](declarations/root-quotientgroup-instismultorsionfree.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsTorsionFree.quotient_torsion](declarations/istorsionfree-quotient-torsion.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [isTorsionFree_iff_noZeroSMulDivisors_nat](declarations/istorsionfree-iff-nozerosmuldivisors-nat.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [isTorsionFree_iff_noZeroSMulDivisors_int](declarations/istorsionfree-iff-nozerosmuldivisors-int.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [IsTorsionFree.of_noZeroSMulDivisors](declarations/istorsionfree-of-nozerosmuldivisors.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [neg_one_mem_torsion](declarations/neg-one-mem-torsion.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef4af2e12f775c74a866d9d9ec04830e265d8c681dea4a83f71f8365924ba19b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
