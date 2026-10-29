# Free Abelian Group Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `314b05e3565c6047316ccf1324242bbb9ca8d542`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup](declarations/freeabeliangroup.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [of](declarations/of.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [lift](declarations/lift.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lift_apply_of](declarations/lift-apply-of.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lift_unique](declarations/lift-unique.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lift_ext](declarations/lift-ext.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift_comp_apply](declarations/lift-comp-apply.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [of_injective](declarations/of-injective.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [of_ne_zero](declarations/of-ne-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [zero_ne_of](declarations/zero-ne-of.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [induction_on](declarations/induction-on-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lift_add_apply](declarations/lift-add-apply.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [lift_add](declarations/lift-add.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [liftAddEquiv](declarations/liftaddequiv.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [liftAddGroupHom](declarations/liftaddgrouphom.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [lift_neg](declarations/lift-neg.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [lift_neg_apply](declarations/lift-neg-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [induction_on'](declarations/induction-on.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_pure](declarations/map-pure.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_zero](declarations/map-zero.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_add](declarations/map-add.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_neg](declarations/map-neg.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_sub](declarations/map-sub.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_of](declarations/map-of.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pure_bind](declarations/pure-bind.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zero_bind](declarations/zero-bind.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [add_bind](declarations/add-bind.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [neg_bind](declarations/neg-bind.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sub_bind](declarations/sub-bind.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pure_seq](declarations/pure-seq.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [zero_seq](declarations/zero-seq.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [add_seq](declarations/add-seq.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [neg_seq](declarations/neg-seq.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sub_seq](declarations/sub-seq.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [seqAddGroupHom](declarations/seqaddgrouphom.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [seq_zero](declarations/seq-zero.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [seq_add](declarations/seq-add.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [seq_neg](declarations/seq-neg.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [seq_sub](declarations/seq-sub.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [map](declarations/map.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lift_comp](declarations/lift-comp.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_id](declarations/map-id.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_id_apply](declarations/map-id-apply.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_comp](declarations/map-comp.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [map_comp_apply](declarations/map-comp-apply.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_of_apply](declarations/map-of-apply.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [mul](declarations/mul.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mul_def](declarations/mul-def.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [of_mul_of](declarations/of-mul-of.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [of_mul](declarations/of-mul.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [distrib](declarations/distrib.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [nonUnitalNonAssocRing](declarations/nonunitalnonassocring.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [one](declarations/one.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [one_def](declarations/one-def.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [of_one](declarations/of-one.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [nonUnitalRing](declarations/nonunitalring.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [ring](declarations/ring.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [ofMulHom](declarations/ofmulhom.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ofMulHom_coe](declarations/ofmulhom-coe.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [liftMonoid](declarations/liftmonoid.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [liftMonoid_coe_addMonoidHom](declarations/liftmonoid-coe-addmonoidhom.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [liftMonoid_coe](declarations/liftmonoid-coe.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [liftMonoid_symm_coe](declarations/liftmonoid-symm-coe.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [uniqueEquiv](declarations/uniqueequiv.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [equivOfEquiv](declarations/equivofequiv.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c7c1a3c19a65aa8bdf48bfc72faeaefeab626154dd54466e716124e70fb5139 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
