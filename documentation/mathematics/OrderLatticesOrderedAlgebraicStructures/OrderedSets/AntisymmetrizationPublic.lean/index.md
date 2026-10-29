# Antisymmetrization Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**87 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Varianted8dc4e7cdd3332129a7a72727def9925221540564964bbad1cf36ebc6cf55ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b60a20d06ef4cc39b77214fd08cb9bc0375ea585`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [AntisymmRel](declarations/antisymmrel.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [antisymmRel_swap](declarations/antisymmrel-swap.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [antisymmRel_swap_apply](declarations/antisymmrel-swap-apply.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [AntisymmRel.refl](declarations/antisymmrel-refl.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [AntisymmRel.rfl](declarations/antisymmrel-rfl.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [AntisymmRel.of_eq](declarations/antisymmrel-of-eq.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [AntisymmRel.symm](declarations/antisymmrel-symm.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [antisymmRel_comm](declarations/antisymmrel-comm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [AntisymmRel.trans](declarations/antisymmrel-trans.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [AntisymmRel.decidableRel](declarations/antisymmrel-decidablerel.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [antisymmRel_iff_eq](declarations/antisymmrel-iff-eq.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [AntisymmRel.left](declarations/antisymmrel-left.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [exactAntisymmRelLeft](declarations/exactantisymmrelleft.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [AntisymmRel.le](declarations/antisymmrel-le.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [AntisymmRel.ge](declarations/antisymmrel-ge.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [AntisymmRel.setoid](declarations/antisymmrel-setoid.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Antisymmetrization](declarations/antisymmetrization.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toAntisymmetrization](declarations/toantisymmetrization.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toAntisymmetrization_eq](declarations/toantisymmetrization-eq.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ofAntisymmetrization](declarations/ofantisymmetrization.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Antisymmetrization.ind](declarations/antisymmetrization-ind.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Antisymmetrization.induction_on](declarations/antisymmetrization-induction-on.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toAntisymmetrization_ofAntisymmetrization](declarations/toantisymmetrization-ofantisymmetrization.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [le_iff_lt_or_antisymmRel](declarations/le-iff-lt-or-antisymmrel.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_of_le_of_antisymmRel](declarations/le-of-le-of-antisymmrel.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [le_of_antisymmRel_of_le](declarations/le-of-antisymmrel-of-le.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lt_of_lt_of_antisymmRel](declarations/lt-of-lt-of-antisymmrel.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lt_of_antisymmRel_of_lt](declarations/lt-of-antisymmrel-of-lt.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [not_lt_of_antisymmRel](declarations/not-lt-of-antisymmrel.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [not_gt_of_antisymmRel](declarations/not-gt-of-antisymmrel.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [not_antisymmRel_of_lt](declarations/not-antisymmrel-of-lt.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [not_antisymmRel_of_gt](declarations/not-antisymmrel-of-gt.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [AntisymmRel.le_congr](declarations/antisymmrel-le-congr.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [AntisymmRel.le_congr_left](declarations/antisymmrel-le-congr-left.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [AntisymmRel.le_congr_right](declarations/antisymmrel-le-congr-right.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [AntisymmRel.lt_congr](declarations/antisymmrel-lt-congr.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [AntisymmRel.lt_congr_left](declarations/antisymmrel-lt-congr-left.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [AntisymmRel.lt_congr_right](declarations/antisymmrel-lt-congr-right.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [AntisymmRel.antisymmRel_congr](declarations/antisymmrel-antisymmrel-congr.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [AntisymmRel.antisymmRel_congr_left](declarations/antisymmrel-antisymmrel-congr-left.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [AntisymmRel.antisymmRel_congr_right](declarations/antisymmrel-antisymmrel-congr-right.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [AntisymmRel.image](declarations/antisymmrel-image.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [instPartialOrderAntisymmetrization](declarations/instpartialorderantisymmetrization.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [antisymmetrization_fibration](declarations/antisymmetrization-fibration.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [acc_antisymmetrization_iff](declarations/acc-antisymmetrization-iff.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [wellFounded_antisymmetrization_iff](declarations/wellfounded-antisymmetrization-iff.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [wellFoundedLT_antisymmetrization_iff](declarations/wellfoundedlt-antisymmetrization-iff.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [wellFoundedGT_antisymmetrization_iff](declarations/wellfoundedgt-antisymmetrization-iff.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [toAntisymmetrization_le_toAntisymmetrization_iff](declarations/toantisymmetrization-le-toantisymmetrization-iff.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [toAntisymmetrization_lt_toAntisymmetrization_iff](declarations/toantisymmetrization-lt-toantisymmetrization-iff.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ofAntisymmetrization_le_ofAntisymmetrization_iff](declarations/ofantisymmetrization-le-ofantisymmetrization-iff.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ofAntisymmetrization_lt_ofAntisymmetrization_iff](declarations/ofantisymmetrization-lt-ofantisymmetrization-iff.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [toAntisymmetrization_mono](declarations/toantisymmetrization-mono.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [liftFun_antisymmRel](declarations/liftfun-antisymmrel.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [OrderHom.antisymmetrization](declarations/orderhom-antisymmetrization.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [OrderHom.coe_antisymmetrization](declarations/orderhom-coe-antisymmetrization.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [OrderHom.antisymmetrization_apply](declarations/orderhom-antisymmetrization-apply.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [OrderHom.antisymmetrization_apply_mk](declarations/orderhom-antisymmetrization-apply-mk.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [OrderEmbedding.ofAntisymmetrization](declarations/orderembedding-ofantisymmetrization.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [OrderIso.dualAntisymmetrization](declarations/orderiso-dualantisymmetrization.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [OrderIso.dualAntisymmetrization_apply](declarations/orderiso-dualantisymmetrization-apply.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [OrderIso.dualAntisymmetrization_symm_apply](declarations/orderiso-dualantisymmetrization-symm-apply.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [AntisymmRel.symmGen](declarations/antisymmrel-symmgen.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Relation.SymmGen.of_lt](declarations/relation-symmgen-of-lt.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Relation.SymmGen.of_gt](declarations/relation-symmgen-of-gt.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Relation.SymmGen.of_symmGen_of_antisymmRel](declarations/relation-symmgen-of-symmgen-of-antisymmrel.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Relation.SymmGen.of_antisymmRel_of_symmGen](declarations/relation-symmgen-of-antisymmrel-of-symmgen.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [AntisymmRel.symmGen_congr](declarations/antisymmrel-symmgen-congr.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [AntisymmRel.symmGen_congr_left](declarations/antisymmrel-symmgen-congr-left.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [AntisymmRel.symmGen_congr_right](declarations/antisymmrel-symmgen-congr-right.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [prodEquiv](declarations/prodequiv.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [prodEquiv_apply_mk](declarations/prodequiv-apply-mk.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [prodEquiv_symm_apply_mk](declarations/prodequiv-symm-apply-mk.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12c45fd2f45c7f976d727f35904b8dd3edf1240b57137ae72350db3c25ed8bb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Varianted8dc4e7cdd3332129a7a72727def9925221540564964bbad1cf36ebc6cf55ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
