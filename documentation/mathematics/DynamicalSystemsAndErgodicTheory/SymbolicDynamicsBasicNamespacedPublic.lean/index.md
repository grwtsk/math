# Symbolic Dynamics Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31bbc053051c9712a6ce08dac692522a01c3a5b8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulShift](declarations/mulshift.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mulShift_apply](declarations/mulshift-apply.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mulShift_one](declarations/mulshift-one.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mulShift_mul](declarations/mulshift-mul.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [continuous_mulShift](declarations/continuous-mulshift.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [cylinder](declarations/cylinder.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [cylinder_eq_set_pi](declarations/cylinder-eq-set-pi.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [mem_cylinder](declarations/mem-cylinder.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isOpen_cylinder](declarations/isopen-cylinder.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isClosed_cylinder](declarations/isclosed-cylinder.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [Subshift](declarations/subshift.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [MulSubshift](declarations/mulsubshift.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mulFullShift](declarations/mulfullshift.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Pattern](declarations/pattern.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Pattern.mulOccursInAt](declarations/pattern-muloccursinat.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mulForbidden](declarations/mulforbidden.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Pattern.mulShift](declarations/pattern-mulshift.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fromConfig](declarations/fromconfig.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mulShift_apply_mul_left_of_mem](declarations/mulshift-apply-mul-left-of-mem.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [mulOccursInAt_mulShift](declarations/muloccursinat-mulshift.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [mapsTo_mulShift_mulForbidden](declarations/mapsto-mulshift-mulforbidden.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [mulOccursInAt_eq_cylinder](declarations/muloccursinat-eq-cylinder.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isOpen_mulOccursInAt](declarations/isopen-muloccursinat.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isClosed_mulForbidden](declarations/isclosed-mulforbidden.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isClosed_mulOccursInAt](declarations/isclosed-muloccursinat.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [MulSubshift.ofForbidden](declarations/mulsubshift-offorbidden.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [finite_setOfPred_pattern_support_eq](declarations/finite-setofpred-pattern-support-eq.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [LanguageOn](declarations/languageon.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [languageOn_mono](declarations/languageon-mono.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [languageOn_union](declarations/languageon-union.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [languageOn_inter_subset](declarations/languageon-inter-subset.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [MulSubshift.languageOn](declarations/mulsubshift-languageon.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1683dba24e0a17913da14ae3c10b13600ece2d0e85716c96985802e9d9678ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
