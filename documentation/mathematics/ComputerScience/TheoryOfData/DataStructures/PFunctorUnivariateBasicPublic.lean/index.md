# PFunctor Univariate Basic Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb1738551e529accb57f00ad108470504a730a7aa0bb16fd7bde28679cd7ad298.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbf6d1fb6d0b5d25e249c90736b77521a219ee96`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PFunctorUnivariateBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PFunctor](declarations/pfunctor.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Obj](declarations/obj.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Obj.mk](declarations/obj-mk.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Obj.rec](declarations/obj-rec.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Obj.rec_mk](declarations/obj-rec-mk.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Obj.fst](declarations/obj-fst.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Obj.snd](declarations/obj-snd.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Obj.fst_mk](declarations/obj-fst-mk.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Obj.snd_mk](declarations/obj-snd-mk.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Obj.eta](declarations/obj-eta.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [map](declarations/map.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [Obj.inhabited](declarations/obj-inhabited.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_eq_map](declarations/map-eq-map.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_eq](declarations/map-eq.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [id_map](declarations/id-map.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_map](declarations/map-map.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [W](declarations/w.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [W.head](declarations/w-head.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [W.children](declarations/w-children.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [W.dest](declarations/w-dest.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [W.mk](declarations/w-mk.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [W.dest_mk](declarations/w-dest-mk.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [W.mk_dest](declarations/w-mk-dest.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Idx](declarations/idx.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Idx.inhabited](declarations/idx-inhabited.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Obj.iget](declarations/obj-iget.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fst_map](declarations/fst-map.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [iget_map](declarations/iget-map.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [comp](declarations/comp.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [comp.mk](declarations/comp-mk.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [comp.get](declarations/comp-get.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [liftp_iff](declarations/liftp-iff.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [liftp_iff'](declarations/liftp-iff-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [liftr_iff](declarations/liftr-iff.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [supp_eq](declarations/supp-eq.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f61fe7ce24db7fde6ffbc2346a76b0bc97130b2ae44804e04b4b3f0fdcdbf107 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb1738551e529accb57f00ad108470504a730a7aa0bb16fd7bde28679cd7ad298.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
