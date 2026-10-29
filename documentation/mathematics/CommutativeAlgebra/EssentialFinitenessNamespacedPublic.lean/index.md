# Essential Finiteness Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `250e6f0a65f5ab54aabf6fa58a813c3242777f0d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/EssentialFinitenessNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [EssFiniteType](declarations/essfinitetype.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [EssFiniteType.finset](declarations/essfinitetype-finset.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [EssFiniteType.subalgebra](declarations/essfinitetype-subalgebra.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [EssFiniteType.adjoin_mem_finset](declarations/essfinitetype-adjoin-mem-finset.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [EssFiniteType.submonoid](declarations/essfinitetype-submonoid.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [EssFiniteType.isLocalization](declarations/essfinitetype-islocalization.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [essFiniteType_cond_iff](declarations/essfinitetype-cond-iff.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [essFiniteType_iff](declarations/essfinitetype-iff.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [EssFiniteType.of_finiteType](declarations/essfinitetype-of-finitetype.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [EssFiniteType.of_isLocalization](declarations/essfinitetype-of-islocalization.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [EssFiniteType.of_id](declarations/essfinitetype-of-id.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [EssFiniteType.aux](declarations/essfinitetype-aux.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [EssFiniteType.comp](declarations/essfinitetype-comp.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [essFiniteType_iff_exists_subalgebra](declarations/essfinitetype-iff-exists-subalgebra.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [EssFiniteType.baseChange](declarations/essfinitetype-basechange.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [EssFiniteType.of_comp](declarations/essfinitetype-of-comp.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [EssFiniteType.comp_iff](declarations/essfinitetype-comp-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [EssFiniteType.of_surjective](declarations/essfinitetype-of-surjective.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [EssFiniteType.iff_of_algEquiv](declarations/essfinitetype-iff-of-algequiv.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [EssFiniteType.algHom_ext](declarations/essfinitetype-alghom-ext.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [EssFiniteType.quotient_map](declarations/essfinitetype-quotient-map.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [EssFiniteType](declarations/essfinitetype-source-edition-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [essFiniteType_algebraMap](declarations/essfinitetype-algebramap.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [EssFiniteType.finset](declarations/essfinitetype-finset-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [FiniteType.essFiniteType](declarations/finitetype-essfinitetype.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [EssFiniteType.ext](declarations/essfinitetype-ext.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb57ac0c7e84e1f862183deba46f26a7ef4ef20c6ad0b089e612a30865f1789a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
