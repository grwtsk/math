# Measurable Space Def Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 74 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/MeasurableSpaceDef/Variant95a9443d199eb40d886987fd1753bb916422d91906953c4b727639800e9ee24b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `366f0b8a98e92f3b62e015dde313d5df148e22fa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasurableSpace](declarations/measurablespace.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [MeasurableSet](declarations/measurableset.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [MeasurableSet.empty](declarations/measurableset-empty.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [MeasurableSet.compl](declarations/measurableset-compl.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MeasurableSet.of_compl](declarations/measurableset-of-compl.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [MeasurableSet.compl_iff](declarations/measurableset-compl-iff.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [MeasurableSet.univ](declarations/measurableset-univ.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Subsingleton.measurableSet](declarations/subsingleton-measurableset.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [MeasurableSet.congr](declarations/measurableset-congr.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [MeasurableSet.iUnion](declarations/measurableset-iunion.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [MeasurableSet.biUnion_decode₂](declarations/measurableset-biunion-decode.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [MeasurableSet.biUnion](declarations/measurableset-biunion.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Set.Finite.measurableSet_biUnion](declarations/set-finite-measurableset-biunion.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Finset.measurableSet_biUnion](declarations/finset-measurableset-biunion.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [MeasurableSet.sUnion](declarations/measurableset-sunion.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Set.Finite.measurableSet_sUnion](declarations/set-finite-measurableset-sunion.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [MeasurableSet.iInter](declarations/measurableset-iinter.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [MeasurableSet.biInter](declarations/measurableset-biinter.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Set.Finite.measurableSet_biInter](declarations/set-finite-measurableset-biinter.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Finset.measurableSet_biInter](declarations/finset-measurableset-biinter.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [MeasurableSet.sInter](declarations/measurableset-sinter.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Set.Finite.measurableSet_sInter](declarations/set-finite-measurableset-sinter.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [MeasurableSet.union](declarations/measurableset-union.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [MeasurableSet.inter](declarations/measurableset-inter.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [MeasurableSet.diff](declarations/measurableset-diff.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [MeasurableSet.symmDiff](declarations/measurableset-symmdiff.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [MeasurableSet.ite](declarations/measurableset-ite.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [MeasurableSet.ite'](declarations/measurableset-ite-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [MeasurableSet.cond](declarations/measurableset-cond.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [MeasurableSet.disjointed](declarations/measurableset-disjointed.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [MeasurableSet.const](declarations/measurableset-const.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nonempty_measurable_superset](declarations/nonempty-measurable-superset.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [MeasurableSpace.measurableSet_injective](declarations/measurablespace-measurableset-injective.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [MeasurableSpace.ext](declarations/measurablespace-ext.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [MeasurableSpace.ext_iff](declarations/measurablespace-ext-iff.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `class` | [MeasurableSingletonClass](declarations/measurablesingletonclass.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [MeasurableSet.singleton](declarations/measurableset-singleton.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [measurableSet_eq](declarations/measurableset-eq.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [MeasurableSet.insert](declarations/measurableset-insert.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measurableSet_insert](declarations/measurableset-insert-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Set.Subsingleton.measurableSet](declarations/set-subsingleton-measurableset.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Set.Finite.measurableSet](declarations/set-finite-measurableset.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Finset.measurableSet](declarations/finset-measurableset.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Set.Countable.measurableSet](declarations/set-countable-measurableset.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [copy](declarations/copy.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [measurableSet_copy](declarations/measurableset-copy.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [copy_eq](declarations/copy-eq.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [le_def](declarations/le-def.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [GenerateMeasurable](declarations/generatemeasurable.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [generateFrom](declarations/generatefrom.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [measurableSet_generateFrom](declarations/measurableset-generatefrom.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [generateFrom_induction](declarations/generatefrom-induction.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [generateFrom_le](declarations/generatefrom-le.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [generateFrom_le_iff](declarations/generatefrom-le-iff.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [generateFrom_measurableSet](declarations/generatefrom-measurableset.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [forall_generateFrom_mem_iff_mem_iff](declarations/forall-generatefrom-mem-iff-mem-iff.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [mkOfClosure](declarations/mkofclosure.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mkOfClosure_sets](declarations/mkofclosure-sets.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [giGenerateFrom](declarations/gigeneratefrom.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [generateFrom_mono](declarations/generatefrom-mono.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [generateFrom_sup_generateFrom](declarations/generatefrom-sup-generatefrom.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [generateFrom_singleton_empty](declarations/generatefrom-singleton-empty.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [generateFrom_singleton_univ](declarations/generatefrom-singleton-univ.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [generateFrom_insert_univ](declarations/generatefrom-insert-univ.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [generateFrom_insert_empty](declarations/generatefrom-insert-empty.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [measurableSet_bot_iff](declarations/measurableset-bot-iff.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [measurableSet_top](declarations/measurableset-top.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [measurableSet_inf](declarations/measurableset-inf.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [measurableSet_sInf](declarations/measurableset-sinf.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [measurableSet_iInf](declarations/measurableset-iinf.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [measurableSet_sup](declarations/measurableset-sup.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [measurableSet_sSup](declarations/measurableset-ssup.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [measurableSet_iSup](declarations/measurableset-isup.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [measurableSpace_iSup_eq](declarations/measurablespace-isup-eq.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [generateFrom_iUnion_measurableSet](declarations/generatefrom-iunion-measurableset.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Measurable](declarations/measurable.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [measurable_id](declarations/measurable-id.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [measurable_id'](declarations/measurable-id-source-edition-2.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Measurable.comp](declarations/measurable-comp-source-edition-2.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Measurable.comp'](declarations/measurable-comp.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [measurable_const](declarations/measurable-const.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Measurable.le](declarations/measurable-le.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [MeasurableSpace.Top.measurable](declarations/measurablespace-top-measurable.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64c8c5040d2ea2932065c92124f16ebed11cd7cb44e30e35c12b3c9aafa5eb71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasurableSpaceDef/Variant95a9443d199eb40d886987fd1753bb916422d91906953c4b727639800e9ee24b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
