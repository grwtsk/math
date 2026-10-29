# Measurable Space Def

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 74 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/MeasurableSpaceDef/Variant6b89a9eef84528a8de73a592c09301d3e2cf988fbc8d65c74325ebea59b1c9f5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33f43c46acb77e8964b36912c19f66c66f16ab04`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasurableSpace](declarations/measurablespace.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [MeasurableSet](declarations/measurableset.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [MeasurableSet.empty](declarations/measurableset-empty.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [MeasurableSet.compl](declarations/measurableset-compl.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MeasurableSet.of_compl](declarations/measurableset-of-compl.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [MeasurableSet.compl_iff](declarations/measurableset-compl-iff.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [MeasurableSet.univ](declarations/measurableset-univ.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Subsingleton.measurableSet](declarations/subsingleton-measurableset.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [MeasurableSet.congr](declarations/measurableset-congr.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [MeasurableSet.iUnion](declarations/measurableset-iunion.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [MeasurableSet.biUnion_decode₂](declarations/measurableset-biunion-decode.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [MeasurableSet.biUnion](declarations/measurableset-biunion.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Set.Finite.measurableSet_biUnion](declarations/set-finite-measurableset-biunion.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Finset.measurableSet_biUnion](declarations/finset-measurableset-biunion.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [MeasurableSet.sUnion](declarations/measurableset-sunion.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Set.Finite.measurableSet_sUnion](declarations/set-finite-measurableset-sunion.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [MeasurableSet.iInter](declarations/measurableset-iinter.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [MeasurableSet.biInter](declarations/measurableset-biinter.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Set.Finite.measurableSet_biInter](declarations/set-finite-measurableset-biinter.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Finset.measurableSet_biInter](declarations/finset-measurableset-biinter.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [MeasurableSet.sInter](declarations/measurableset-sinter.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Set.Finite.measurableSet_sInter](declarations/set-finite-measurableset-sinter.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [MeasurableSet.union](declarations/measurableset-union.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [MeasurableSet.inter](declarations/measurableset-inter.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [MeasurableSet.diff](declarations/measurableset-diff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [MeasurableSet.symmDiff](declarations/measurableset-symmdiff.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [MeasurableSet.ite](declarations/measurableset-ite-source-edition-2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [MeasurableSet.ite'](declarations/measurableset-ite.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [MeasurableSet.cond](declarations/measurableset-cond.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [MeasurableSet.disjointed](declarations/measurableset-disjointed.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [MeasurableSet.const](declarations/measurableset-const.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nonempty_measurable_superset](declarations/nonempty-measurable-superset.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [MeasurableSpace.measurableSet_injective](declarations/measurablespace-measurableset-injective.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [MeasurableSpace.ext](declarations/measurablespace-ext.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [MeasurableSpace.ext_iff](declarations/measurablespace-ext-iff.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `class` | [MeasurableSingletonClass](declarations/measurablesingletonclass.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [MeasurableSet.singleton](declarations/measurableset-singleton.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [measurableSet_eq](declarations/measurableset-eq.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [MeasurableSet.insert](declarations/measurableset-insert-source-edition-2.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measurableSet_insert](declarations/measurableset-insert.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Set.Subsingleton.measurableSet](declarations/set-subsingleton-measurableset.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Set.Finite.measurableSet](declarations/set-finite-measurableset.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Finset.measurableSet](declarations/finset-measurableset.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Set.Countable.measurableSet](declarations/set-countable-measurableset.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [copy](declarations/copy.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [measurableSet_copy](declarations/measurableset-copy.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [copy_eq](declarations/copy-eq.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [le_def](declarations/le-def.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [GenerateMeasurable](declarations/generatemeasurable.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [generateFrom](declarations/generatefrom.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [measurableSet_generateFrom](declarations/measurableset-generatefrom.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [generateFrom_induction](declarations/generatefrom-induction.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [generateFrom_le](declarations/generatefrom-le.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [generateFrom_le_iff](declarations/generatefrom-le-iff.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [generateFrom_measurableSet](declarations/generatefrom-measurableset.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [forall_generateFrom_mem_iff_mem_iff](declarations/forall-generatefrom-mem-iff-mem-iff.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [mkOfClosure](declarations/mkofclosure.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mkOfClosure_sets](declarations/mkofclosure-sets.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [giGenerateFrom](declarations/gigeneratefrom.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [generateFrom_mono](declarations/generatefrom-mono.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [generateFrom_sup_generateFrom](declarations/generatefrom-sup-generatefrom.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [generateFrom_singleton_empty](declarations/generatefrom-singleton-empty.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [generateFrom_singleton_univ](declarations/generatefrom-singleton-univ.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [generateFrom_insert_univ](declarations/generatefrom-insert-univ.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [generateFrom_insert_empty](declarations/generatefrom-insert-empty.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [measurableSet_bot_iff](declarations/measurableset-bot-iff.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [measurableSet_top](declarations/measurableset-top.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [measurableSet_inf](declarations/measurableset-inf.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [measurableSet_sInf](declarations/measurableset-sinf.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [measurableSet_iInf](declarations/measurableset-iinf.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [measurableSet_sup](declarations/measurableset-sup.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [measurableSet_sSup](declarations/measurableset-ssup.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [measurableSet_iSup](declarations/measurableset-isup.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [measurableSpace_iSup_eq](declarations/measurablespace-isup-eq.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [generateFrom_iUnion_measurableSet](declarations/generatefrom-iunion-measurableset.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Measurable](declarations/measurable.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [measurable_id](declarations/measurable-id.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [measurable_id'](declarations/measurable-id-source-edition-2.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Measurable.comp](declarations/measurable-comp.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Measurable.comp'](declarations/measurable-comp-source-edition-2.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [measurable_const](declarations/measurable-const.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Measurable.le](declarations/measurable-le.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [MeasurableSpace.Top.measurable](declarations/measurablespace-top-measurable.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=620b232d0b0930d97f843c7cc52b60d4a735636bc325ee3a021a3ea6d7e29cf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasurableSpaceDef/Variant6b89a9eef84528a8de73a592c09301d3e2cf988fbc8d65c74325ebea59b1c9f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
