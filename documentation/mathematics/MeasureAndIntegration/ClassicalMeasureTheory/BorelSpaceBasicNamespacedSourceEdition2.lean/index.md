# Borel Space Basic Namespaced Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec87012329030fbd534787292e44cc35682b104e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceBasicNamespacedSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [borel](declarations/borel.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [borel_anti](declarations/borel-anti.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [borel_eq_top_of_discrete](declarations/borel-eq-top-of-discrete.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [borel_eq_generateFrom_of_subbasis](declarations/borel-eq-generatefrom-of-subbasis.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [TopologicalSpace.IsTopologicalBasis.borel_eq_generateFrom](declarations/topologicalspace-istopologicalbasis-borel-eq-generatefrom.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isPiSystem_isOpen](declarations/ispisystem-isopen.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isPiSystem_isClosed](declarations/ispisystem-isclosed.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [borel_eq_generateFrom_isClosed](declarations/borel-eq-generatefrom-isclosed.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [borel_comap](declarations/borel-comap.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Continuous.borel_measurable](declarations/continuous-borel-measurable.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `class` | [OpensMeasurableSpace](declarations/opensmeasurablespace.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [BorelSpace](declarations/borelspace.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `syntax` | [(anonymous)](declarations/syntax.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [addBorelInstance](declarations/addborelinstance.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [borelToRefl](declarations/boreltorefl.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [borelize](declarations/borelize.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Subtype.borelSpace](declarations/subtype-borelspace.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Countable.instBorelSpace](declarations/countable-instborelspace.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Subtype.opensMeasurableSpace](declarations/subtype-opensmeasurablespace.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [opensMeasurableSpace_iff_forall_measurableSet](declarations/opensmeasurablespace-iff-forall-measurableset.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsOpen.measurableSet](declarations/isopen-measurableset.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsOpen.nullMeasurableSet](declarations/isopen-nullmeasurableset.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [MeasurableSet.induction_on_open](declarations/measurableset-induction-on-open.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [measurableSet_interior](declarations/measurableset-interior.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsGδ.measurableSet](declarations/isg-measurableset.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [measurableSet_of_continuousAt](declarations/measurableset-of-continuousat.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsClosed.measurableSet](declarations/isclosed-measurableset.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsClosed.nullMeasurableSet](declarations/isclosed-nullmeasurableset.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsCompact.measurableSet](declarations/iscompact-measurableset.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsCompact.nullMeasurableSet](declarations/iscompact-nullmeasurableset.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Inseparable.mem_measurableSet_iff](declarations/inseparable-mem-measurableset-iff.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsCompact.closure_subset_measurableSet](declarations/iscompact-closure-subset-measurableset.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsCompact.measure_closure](declarations/iscompact-measure-closure.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measurableSet_closure](declarations/measurableset-closure.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measurableSet_frontier](declarations/measurableset-frontier.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [measurable_of_isOpen](declarations/measurable-of-isopen.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measurable_of_isClosed](declarations/measurable-of-isclosed-source-edition-2.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [measurable_of_isClosed'](declarations/measurable-of-isclosed.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [nhds_isMeasurablyGenerated](declarations/nhds-ismeasurablygenerated.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [MeasurableSet.nhdsWithin_isMeasurablyGenerated](declarations/measurableset-nhdswithin-ismeasurablygenerated.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [borel_eq_top_of_countable](declarations/borel-eq-top-of-countable.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [Pi.opensMeasurableSpace](declarations/pi-opensmeasurablespace.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `class` | [SecondCountableTopologyEither](declarations/secondcountabletopologyeither.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [Prod.opensMeasurableSpace](declarations/prod-opensmeasurablespace.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [interior_ae_eq_of_null_frontier](declarations/interior-ae-eq-of-null-frontier.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [measure_interior_of_null_frontier](declarations/measure-interior-of-null-frontier.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [nullMeasurableSet_of_null_frontier](declarations/nullmeasurableset-of-null-frontier.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [closure_ae_eq_of_null_frontier](declarations/closure-ae-eq-of-null-frontier.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [measure_closure_of_null_frontier](declarations/measure-closure-of-null-frontier.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [separatesPointsOfOpensMeasurableSpaceOfT0Space](declarations/separatespointsofopensmeasurablespaceoft0space.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Continuous.measurable](declarations/continuous-measurable.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Continuous.aemeasurable](declarations/continuous-aemeasurable.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsClosedEmbedding.measurable](declarations/isclosedembedding-measurable.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ContinuousOn.measurable_piecewise](declarations/continuouson-measurable-piecewise.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Homeomorph.measurable](declarations/homeomorph-measurable.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [Homeomorph.toMeasurableEquiv](declarations/homeomorph-tomeasurableequiv.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [Homeomorph.measurableEmbedding](declarations/homeomorph-measurableembedding.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Homeomorph.toMeasurableEquiv_coe](declarations/homeomorph-tomeasurableequiv-coe.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Homeomorph.toMeasurableEquiv_symm_coe](declarations/homeomorph-tomeasurableequiv-symm-coe.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [ContinuousMap.measurable](declarations/continuousmap-measurable.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [measurable_of_continuousOn_compl_singleton](declarations/measurable-of-continuouson-compl-singleton.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Continuous.measurable2](declarations/continuous-measurable2.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Continuous.aemeasurable2](declarations/continuous-aemeasurable2.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [pi_le_borel_pi](declarations/pi-le-borel-pi.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [prod_le_borel_prod](declarations/prod-le-borel-prod.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [Pi.borelSpace](declarations/pi-borelspace.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [Prod.borelSpace](declarations/prod-borelspace.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [MeasurableEmbedding.borelSpace](declarations/measurableembedding-borelspace.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [Borel Space Basic Namespaced Source Edition2](declarations/instborelspace.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [DiscreteMeasurableSpace.toBorelSpace](declarations/discretemeasurablespace-toborelspace.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Topology.IsEmbedding.measurableEmbedding](declarations/topology-isembedding-measurableembedding.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Topology.IsClosedEmbedding.measurableEmbedding](declarations/topology-isclosedembedding-measurableembedding.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Topology.IsOpenEmbedding.measurableEmbedding](declarations/topology-isopenembedding-measurableembedding.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [Empty.borelSpace](declarations/empty-borelspace.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [Unit.borelSpace](declarations/unit-borelspace.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [Bool.borelSpace](declarations/bool-borelspace.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [Nat.borelSpace](declarations/nat-borelspace.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [Int.borelSpace](declarations/int-borelspace.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [Rat.borelSpace](declarations/rat-borelspace.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [Real.measurableSpace](declarations/real-measurablespace.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [Real.borelSpace](declarations/real-borelspace.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [NNReal.measurableSpace](declarations/nnreal-measurablespace.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [NNReal.borelSpace](declarations/nnreal-borelspace.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [ENNReal.measurableSpace](declarations/ennreal-measurablespace.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [ENNReal.borelSpace](declarations/ennreal-borelspace.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [EReal.measurableSpace](declarations/ereal-measurablespace.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [EReal.borelSpace](declarations/ereal-borelspace.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31d03eac615b1903c1d2590bfd62875122842a7aa77cd6b666c738a1bf42bf71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
