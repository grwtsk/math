# Roots Of Unity Basic Namespaced Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variant919a19ca71d7764d5c96bc2321ea5d029fc1f339d07053b6a93fa6c71a6289f3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2385f5b436375d6ececb67ae95b83f0b0b9d9942`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rootsOfUnity](declarations/rootsofunity.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_rootsOfUnity](declarations/mem-rootsofunity-source-edition-2.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_rootsOfUnity'](declarations/mem-rootsofunity.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rootsOfUnity_one](declarations/rootsofunity-one.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [rootsOfUnity_zero](declarations/rootsofunity-zero.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rootsOfUnity.coe_injective](declarations/rootsofunity-coe-injective.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [rootsOfUnity.mkOfPowEq](declarations/rootsofunity-mkofpoweq.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rootsOfUnity.coe_mkOfPowEq](declarations/rootsofunity-coe-mkofpoweq.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rootsOfUnity_le_of_dvd](declarations/rootsofunity-le-of-dvd.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_rootsOfUnity](declarations/map-rootsofunity.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rootsOfUnity.coe_pow](declarations/rootsofunity-coe-pow.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [rootsOfUnityUnitsMulEquiv](declarations/rootsofunityunitsmulequiv.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [restrictRootsOfUnity](declarations/restrictrootsofunity.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [restrictRootsOfUnity_coe_apply](declarations/restrictrootsofunity-coe-apply.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [MulEquiv.restrictRootsOfUnity](declarations/mulequiv-restrictrootsofunity.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [MulEquiv.restrictRootsOfUnity_coe_apply](declarations/mulequiv-restrictrootsofunity-coe-apply.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [MulEquiv.restrictRootsOfUnity_symm](declarations/mulequiv-restrictrootsofunity-symm.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_rootsOfUnity_iff_mem_nthRoots](declarations/mem-rootsofunity-iff-mem-nthroots.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rootsOfUnityEquivNthRoots](declarations/rootsofunityequivnthroots.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rootsOfUnityEquivNthRoots_apply](declarations/rootsofunityequivnthroots-apply.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rootsOfUnityEquivNthRoots_symm_apply](declarations/rootsofunityequivnthroots-symm-apply.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [rootsOfUnity.fintype](declarations/rootsofunity-fintype.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [rootsOfUnity.isCyclic](declarations/rootsofunity-iscyclic.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [card_rootsOfUnity](declarations/card-rootsofunity.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_rootsOfUnity_eq_pow_self](declarations/map-rootsofunity-eq-pow-self.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_rootsOfUnity_prime_pow_mul_iff](declarations/mem-rootsofunity-prime-pow-mul-iff-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_rootsOfUnity_prime_pow_mul_iff'](declarations/mem-rootsofunity-prime-pow-mul-iff.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [monoidHomMulEquivRootsOfUnityOfGenerator](declarations/monoidhommulequivrootsofunityofgenerator.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [monoidHom_mulEquiv_rootsOfUnity](declarations/monoidhom-mulequiv-rootsofunity.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe4b52292d854be452dcebab78e727a84ab6325ae211e8bcc42cd7b3cd376395 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant919a19ca71d7764d5c96bc2321ea5d029fc1f339d07053b6a93fa6c71a6289f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
