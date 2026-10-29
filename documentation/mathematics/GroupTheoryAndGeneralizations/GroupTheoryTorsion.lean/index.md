# Group Theory Torsion

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b00ade7827985a30f9483f185a56eb58681465a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTorsion](declarations/istorsion.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [not_isTorsion_iff](declarations/not-istorsion-iff.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsTorsion.group](declarations/istorsion-group.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsTorsion.subgroup](declarations/istorsion-subgroup.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsTorsion.of_surjective](declarations/istorsion-of-surjective.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsTorsion.extension_closed](declarations/istorsion-extension-closed.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsTorsion.quotient_iff](declarations/istorsion-quotient-iff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ExponentExists.isTorsion](declarations/exponentexists-istorsion.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsTorsion.exponentExists](declarations/istorsion-exponentexists.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isTorsion_of_finite](declarations/istorsion-of-finite.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsTorsion.module_of_torsion](declarations/istorsion-module-of-torsion.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsTorsion.module_of_finite](declarations/istorsion-module-of-finite.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [torsion](declarations/torsion-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [torsion.isTorsion](declarations/torsion-istorsion.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [primaryComponent](declarations/primarycomponent-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [primaryComponent.exists_orderOf_eq_prime_pow](declarations/primarycomponent-exists-orderof-eq-prime-pow.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [primaryComponent.disjoint](declarations/primarycomponent-disjoint.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [torsion_eq_top](declarations/torsion-eq-top.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [torsionMulEquiv](declarations/torsionmulequiv.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [torsionMulEquiv_apply](declarations/torsionmulequiv-apply.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [torsionMulEquiv_symm_apply_coe](declarations/torsionmulequiv-symm-apply-coe.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Torsion.ofTorsion](declarations/torsion-oftorsion.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [torsion](declarations/torsion.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [torsion_eq_torsion_submonoid](declarations/torsion-eq-torsion-submonoid.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_torsion](declarations/mem-torsion.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [primaryComponent](declarations/primarycomponent.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [primaryComponent.isPGroup](declarations/primarycomponent-ispgroup.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsTorsionFree](declarations/istorsionfree.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_isTorsionFree_iff](declarations/not-istorsionfree-iff.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsTorsion.not_torsion_free](declarations/istorsion-not-torsion-free.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsTorsionFree.not_torsion](declarations/istorsionfree-not-torsion.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsTorsionFree.subgroup](declarations/istorsionfree-subgroup.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsTorsionFree.prod](declarations/istorsionfree-prod.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsTorsionFree.quotient_torsion](declarations/istorsionfree-quotient-torsion.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab771f19bd8e4f50c772e5a49c0a323a170902fdd86dccc222ebe8f32f0567f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
