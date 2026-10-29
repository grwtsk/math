# Symbolic Dynamics Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant965909eedd4ec4d391e16fb950627bb031bb48b198a5fcc48ca07ee46f75287a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5cecafff31a4cb24b5c9f20a3f2e91100e5d125`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulShift](declarations/mulshift.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mulShift_apply](declarations/mulshift-apply.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mulShift_one](declarations/mulshift-one.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mulShift_mul](declarations/mulshift-mul.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [continuous_mulShift](declarations/continuous-mulshift.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [cylinder](declarations/cylinder.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [cylinder_eq_set_pi](declarations/cylinder-eq-set-pi.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [mem_cylinder](declarations/mem-cylinder.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isOpen_cylinder](declarations/isopen-cylinder.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isClosed_cylinder](declarations/isclosed-cylinder.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [Subshift](declarations/subshift.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [MulSubshift](declarations/mulsubshift.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mulFullShift](declarations/mulfullshift.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Pattern](declarations/pattern.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Pattern.mulOccursInAt](declarations/pattern-muloccursinat.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mulForbidden](declarations/mulforbidden.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Pattern.mulShift](declarations/pattern-mulshift.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fromConfig](declarations/fromconfig.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mulShift_apply_mul_left_of_mem](declarations/mulshift-apply-mul-left-of-mem.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [mulOccursInAt_mulShift](declarations/muloccursinat-mulshift.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [mapsTo_mulShift_mulForbidden](declarations/mapsto-mulshift-mulforbidden.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [mulOccursInAt_eq_cylinder](declarations/muloccursinat-eq-cylinder.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isOpen_mulOccursInAt](declarations/isopen-muloccursinat.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isClosed_mulForbidden](declarations/isclosed-mulforbidden.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isClosed_mulOccursInAt](declarations/isclosed-muloccursinat.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [MulSubshift.ofForbidden](declarations/mulsubshift-offorbidden.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [finite_setOfPred_pattern_support_eq](declarations/finite-setofpred-pattern-support-eq.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [LanguageOn](declarations/languageon.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [languageOn_mono](declarations/languageon-mono.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [languageOn_union](declarations/languageon-union.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [languageOn_inter_subset](declarations/languageon-inter-subset.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [MulSubshift.languageOn](declarations/mulsubshift-languageon.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=785485f545505568deaf045b2b0bf6ce9962ee6a9c2693ba44b525b165f46f7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant965909eedd4ec4d391e16fb950627bb031bb48b198a5fcc48ca07ee46f75287a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
