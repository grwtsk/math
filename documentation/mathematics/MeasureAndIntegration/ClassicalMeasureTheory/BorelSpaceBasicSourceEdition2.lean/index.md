# Borel Space Basic Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b8a9a5f3732a4b4c1822eebb4543c9e50021073`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [borel](declarations/borel.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [borel_anti](declarations/borel-anti.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [borel_eq_top_of_discrete](declarations/borel-eq-top-of-discrete.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [borel_eq_generateFrom_of_subbasis](declarations/borel-eq-generatefrom-of-subbasis.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [TopologicalSpace.IsTopologicalBasis.borel_eq_generateFrom](declarations/topologicalspace-istopologicalbasis-borel-eq-generatefrom.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isPiSystem_isOpen](declarations/ispisystem-isopen.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isPiSystem_isClosed](declarations/ispisystem-isclosed.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [borel_eq_generateFrom_isClosed](declarations/borel-eq-generatefrom-isclosed.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [borel_comap](declarations/borel-comap.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Continuous.borel_measurable](declarations/continuous-borel-measurable.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `class` | [OpensMeasurableSpace](declarations/opensmeasurablespace.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [BorelSpace](declarations/borelspace.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `syntax` | [(anonymous)](declarations/syntax.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [addBorelInstance](declarations/addborelinstance.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [borelToRefl](declarations/boreltorefl.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [borelize](declarations/borelize.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Subtype.borelSpace](declarations/subtype-borelspace.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Countable.instBorelSpace](declarations/countable-instborelspace.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Subtype.opensMeasurableSpace](declarations/subtype-opensmeasurablespace.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [opensMeasurableSpace_iff_forall_measurableSet](declarations/opensmeasurablespace-iff-forall-measurableset.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsOpen.measurableSet](declarations/isopen-measurableset.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsOpen.nullMeasurableSet](declarations/isopen-nullmeasurableset.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [MeasurableSet.induction_on_open](declarations/measurableset-induction-on-open.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [measurableSet_interior](declarations/measurableset-interior.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsGδ.measurableSet](declarations/isg-measurableset.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [measurableSet_of_continuousAt](declarations/measurableset-of-continuousat.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsClosed.measurableSet](declarations/isclosed-measurableset.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsClosed.nullMeasurableSet](declarations/isclosed-nullmeasurableset.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsCompact.measurableSet](declarations/iscompact-measurableset.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsCompact.nullMeasurableSet](declarations/iscompact-nullmeasurableset.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Inseparable.mem_measurableSet_iff](declarations/inseparable-mem-measurableset-iff.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsCompact.closure_subset_measurableSet](declarations/iscompact-closure-subset-measurableset.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsCompact.measure_closure](declarations/iscompact-measure-closure.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measurableSet_closure](declarations/measurableset-closure.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measurableSet_frontier](declarations/measurableset-frontier.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [measurable_of_isOpen](declarations/measurable-of-isopen.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measurable_of_isClosed](declarations/measurable-of-isclosed.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [measurable_of_isClosed'](declarations/measurable-of-isclosed-source-edition-2.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [nhds_isMeasurablyGenerated](declarations/nhds-ismeasurablygenerated.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [MeasurableSet.nhdsWithin_isMeasurablyGenerated](declarations/measurableset-nhdswithin-ismeasurablygenerated.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [borel_eq_top_of_countable](declarations/borel-eq-top-of-countable.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [Pi.opensMeasurableSpace](declarations/pi-opensmeasurablespace.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `class` | [SecondCountableTopologyEither](declarations/secondcountabletopologyeither.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [Prod.opensMeasurableSpace](declarations/prod-opensmeasurablespace.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [interior_ae_eq_of_null_frontier](declarations/interior-ae-eq-of-null-frontier.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [measure_interior_of_null_frontier](declarations/measure-interior-of-null-frontier.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [nullMeasurableSet_of_null_frontier](declarations/nullmeasurableset-of-null-frontier.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [closure_ae_eq_of_null_frontier](declarations/closure-ae-eq-of-null-frontier.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [measure_closure_of_null_frontier](declarations/measure-closure-of-null-frontier.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [separatesPointsOfOpensMeasurableSpaceOfT0Space](declarations/separatespointsofopensmeasurablespaceoft0space.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Continuous.measurable](declarations/continuous-measurable.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Continuous.aemeasurable](declarations/continuous-aemeasurable.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsClosedEmbedding.measurable](declarations/isclosedembedding-measurable.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ContinuousOn.measurable_piecewise](declarations/continuouson-measurable-piecewise.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Homeomorph.measurable](declarations/homeomorph-measurable.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [Homeomorph.toMeasurableEquiv](declarations/homeomorph-tomeasurableequiv.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [Homeomorph.measurableEmbedding](declarations/homeomorph-measurableembedding.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Homeomorph.toMeasurableEquiv_coe](declarations/homeomorph-tomeasurableequiv-coe.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Homeomorph.toMeasurableEquiv_symm_coe](declarations/homeomorph-tomeasurableequiv-symm-coe.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [ContinuousMap.measurable](declarations/continuousmap-measurable.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [measurable_of_continuousOn_compl_singleton](declarations/measurable-of-continuouson-compl-singleton.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Continuous.measurable2](declarations/continuous-measurable2.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Continuous.aemeasurable2](declarations/continuous-aemeasurable2.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [pi_le_borel_pi](declarations/pi-le-borel-pi.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [prod_le_borel_prod](declarations/prod-le-borel-prod.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [Pi.borelSpace](declarations/pi-borelspace.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [Prod.borelSpace](declarations/prod-borelspace.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [MeasurableEmbedding.borelSpace](declarations/measurableembedding-borelspace.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [_root_.ULift.instBorelSpace](declarations/root-ulift-instborelspace.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [DiscreteMeasurableSpace.toBorelSpace](declarations/discretemeasurablespace-toborelspace.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Topology.IsEmbedding.measurableEmbedding](declarations/topology-isembedding-measurableembedding.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Topology.IsClosedEmbedding.measurableEmbedding](declarations/topology-isclosedembedding-measurableembedding.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Topology.IsOpenEmbedding.measurableEmbedding](declarations/topology-isopenembedding-measurableembedding.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [Empty.borelSpace](declarations/empty-borelspace.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [Unit.borelSpace](declarations/unit-borelspace.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [Bool.borelSpace](declarations/bool-borelspace.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [Nat.borelSpace](declarations/nat-borelspace.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [Int.borelSpace](declarations/int-borelspace.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [Rat.borelSpace](declarations/rat-borelspace.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [Real.measurableSpace](declarations/real-measurablespace.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [Real.borelSpace](declarations/real-borelspace.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [NNReal.measurableSpace](declarations/nnreal-measurablespace.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [NNReal.borelSpace](declarations/nnreal-borelspace.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [ENNReal.measurableSpace](declarations/ennreal-measurablespace.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [ENNReal.borelSpace](declarations/ennreal-borelspace.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [EReal.measurableSpace](declarations/ereal-measurablespace.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [EReal.borelSpace](declarations/ereal-borelspace.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=904b1f655fef6d73c626b4bcbe2b62fc82affe71d81e30660c3419dd0fd31163 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
