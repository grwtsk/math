# Partition Empty Not Mem Classes

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**67 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c779d719c64be1656d957c94c90cd677bafdcd20`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_mem_eqv_class](declarations/eq-of-mem-eqv-class.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkClasses](declarations/mkclasses.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [classes](declarations/classes.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_classes](declarations/mem-classes.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [classes_ker_subset_fiber_set](declarations/classes-ker-subset-fiber-set.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [finite_classes_ker](declarations/finite-classes-ker.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [card_classes_ker_le](declarations/card-classes-ker-le.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_iff_classes_eq](declarations/eq-iff-classes-eq.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rel_iff_exists_classes](declarations/rel-iff-exists-classes.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [classes_inj](declarations/classes-inj.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [empty_notMem_classes](declarations/empty-notmem-classes.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [classes_eqv_classes](declarations/classes-eqv-classes.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_of_mem_classes](declarations/eq-of-mem-classes.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eq_eqv_class_of_mem](declarations/eq-eqv-class-of-mem.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eqv_class_mem](declarations/eqv-class-mem.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eqv_class_mem'](declarations/eqv-class-mem-source-edition-2.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eqv_classes_disjoint](declarations/eqv-classes-disjoint.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eqv_classes_of_disjoint_union](declarations/eqv-classes-of-disjoint-union.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [setoidOfDisjointUnion](declarations/setoidofdisjointunion.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mkClasses_classes](declarations/mkclasses-classes.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sUnion_classes](declarations/sunion-classes.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [quotientEquivClasses](declarations/quotientequivclasses.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [quotientEquivClasses_mk_eq](declarations/quotientequivclasses-mk-eq.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [IsPartition](declarations/ispartition.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nonempty_of_mem_partition](declarations/nonempty-of-mem-partition.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isPartition_classes](declarations/ispartition-classes.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsPartition.pairwiseDisjoint](declarations/ispartition-pairwisedisjoint.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [_root_.Set.PairwiseDisjoint.isPartition_of_exists_of_ne_empty](declarations/root-set-pairwisedisjoint-ispartition-of-exists-of-ne-empty.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsPartition.sUnion_eq_univ](declarations/ispartition-sunion-eq-univ.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exists_of_mem_partition](declarations/exists-of-mem-partition.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [classes_mkClasses](declarations/classes-mkclasses.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [Partition.le](declarations/partition-le.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [Partition.partialOrder](declarations/partition-partialorder.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Partition.orderIso](declarations/partition-orderiso.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [Partition.completeLattice](declarations/partition-completelattice.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [IsPartition.finpartition](declarations/ispartition-finpartition.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Finpartition.isPartition_parts](declarations/finpartition-ispartition-parts.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [IndexedPartition](declarations/indexedpartition.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [IndexedPartition.mk'](declarations/indexedpartition-mk.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [exists_mem](declarations/exists-mem.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [iUnion](declarations/iunion.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [disjoint](declarations/disjoint.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mem_iff_index_eq](declarations/mem-iff-index-eq.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [eq](declarations/eq.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `abbrev` | [setoid](declarations/setoid.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [index_some](declarations/index-some.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [some_index](declarations/some-index.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Quotient](declarations/quotient.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [proj](declarations/proj.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [proj_eq_iff](declarations/proj-eq-iff.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [proj_some_index](declarations/proj-some-index.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [equivQuotient](declarations/equivquotient.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [equivQuotient_index_apply](declarations/equivquotient-index-apply.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [equivQuotient_symm_proj_apply](declarations/equivquotient-symm-proj-apply.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [equivQuotient_index](declarations/equivquotient-index.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [out](declarations/out.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [out_proj](declarations/out-proj.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [index_out](declarations/index-out.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [proj_out](declarations/proj-out.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [class_of](declarations/class-of.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [proj_fiber](declarations/proj-fiber.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [piecewise](declarations/piecewise.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [piecewise_apply](declarations/piecewise-apply.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [piecewise_inj](declarations/piecewise-inj.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [piecewise_bij](declarations/piecewise-bij.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bde5027fd73d76153aca8103d25a2e3e89dc8a971110a70afcff943e9a816c6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
