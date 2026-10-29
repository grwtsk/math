# Creates Namespaced Lifted Limit Maps To Original Inv Map

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant05c91f74eb45b6ec7c8acc2c741d8c0db81490c5d8e4dc1ea701c81b571524d5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30b3282de3e69f12c3488b168128f22f9b751d0d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesNamespacedLiftedLimitMapsToOriginalInvMap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LiftableCone](declarations/liftablecone.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LiftableCocone](declarations/liftablecocone.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [CreatesLimit](declarations/createslimit.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [CreatesLimitsOfShape](declarations/createslimitsofshape.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [CreatesLimitsOfSize](declarations/createslimitsofsize.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [CreatesLimits](declarations/createslimits.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [CreatesColimit](declarations/createscolimit.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [CreatesColimitsOfShape](declarations/createscolimitsofshape.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [CreatesColimitsOfSize](declarations/createscolimitsofsize.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [CreatesColimits](declarations/createscolimits.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [liftLimit](declarations/liftlimit.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [liftedLimitMapsToOriginal](declarations/liftedlimitmapstooriginal.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [liftedLimitMapsToOriginal_inv_map_π](declarations/liftedlimitmapstooriginal-inv-map.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [liftedLimitIsLimit](declarations/liftedlimitislimit.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasLimit_of_created](declarations/haslimit-of-created.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape](declarations/haslimitsofshape-of-haslimitsofshape-createslimitsofshape.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasLimits_of_hasLimits_createsLimits](declarations/haslimits-of-haslimits-createslimits.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [liftColimit](declarations/liftcolimit.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [liftedColimitMapsToOriginal](declarations/liftedcolimitmapstooriginal.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [liftedColimitIsColimit](declarations/liftedcolimitiscolimit.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasColimit_of_created](declarations/hascolimit-of-created.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape](declarations/hascolimitsofshape-of-hascolimitsofshape-createscolimitsofshape.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasColimits_of_hasColimits_createsColimits](declarations/hascolimits-of-hascolimits-createscolimits.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [LiftsToLimit](declarations/liftstolimit.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [LiftsToColimit](declarations/liftstocolimit.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [createsLimitOfReflectsIso](declarations/createslimitofreflectsiso.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [createsLimitOfReflectsIso'](declarations/createslimitofreflectsiso-source-edition-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [createsLimitOfReflectsIsomorphismsOfPreserves](declarations/createslimitofreflectsisomorphismsofpreserves.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [createsLimitOfFullyFaithfulOfLift'](declarations/createslimitoffullyfaithfuloflift.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [createsLimitOfFullyFaithfulOfLift](declarations/createslimitoffullyfaithfuloflift-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [createsLimitOfFullyFaithfulOfIso'](declarations/createslimitoffullyfaithfulofiso.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [createsLimitOfFullyFaithfulOfIso](declarations/createslimitoffullyfaithfulofiso-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [createsLimitOfFullyFaithfulOfPreserves](declarations/createslimitoffullyfaithfulofpreserves.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [preservesLimitOfCreatesLimitAndHasLimit](declarations/preserveslimitofcreateslimitandhaslimit.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [preservesLimitOfShapeOfCreatesLimitsOfShapeAndHasLimitsOfShape](declarations/preserveslimitofshapeofcreateslimitsofshapeandhaslimitsofshape.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [preservesLimitsOfCreatesLimitsAndHasLimits](declarations/preserveslimitsofcreateslimitsandhaslimits.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [createsColimitOfReflectsIso](declarations/createscolimitofreflectsiso-source-edition-2.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [createsColimitOfReflectsIso'](declarations/createscolimitofreflectsiso.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [createsColimitOfReflectsIsomorphismsOfPreserves](declarations/createscolimitofreflectsisomorphismsofpreserves.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [createsColimitOfFullyFaithfulOfLift'](declarations/createscolimitoffullyfaithfuloflift.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [createsColimitOfFullyFaithfulOfLift](declarations/createscolimitoffullyfaithfuloflift-source-edition-2.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [createsColimitOfFullyFaithfulOfIso'](declarations/createscolimitoffullyfaithfulofiso-source-edition-2.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [createsColimitOfFullyFaithfulOfIso](declarations/createscolimitoffullyfaithfulofiso.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [preservesColimitOfCreatesColimitAndHasColimit](declarations/preservescolimitofcreatescolimitandhascolimit.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [preservesColimitOfShapeOfCreatesColimitsOfShapeAndHasColimitsOfShape](declarations/preservescolimitofshapeofcreatescolimitsofshapeandhascolimitsofshape.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [preservesColimitsOfCreatesColimitsAndHasColimits](declarations/preservescolimitsofcreatescolimitsandhascolimits.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [createsLimitOfIsoDiagram](declarations/createslimitofisodiagram.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [createsLimitOfNatIso](declarations/createslimitofnatiso.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [createsLimitsOfShapeOfNatIso](declarations/createslimitsofshapeofnatiso.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [createsLimitsOfNatIso](declarations/createslimitsofnatiso.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [createsLimitsOfShapeOfEquiv](declarations/createslimitsofshapeofequiv.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [createsColimitOfIsoDiagram](declarations/createscolimitofisodiagram.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [createsColimitOfNatIso](declarations/createscolimitofnatiso.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [createsColimitsOfShapeOfNatIso](declarations/createscolimitsofshapeofnatiso.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [createsColimitsOfNatIso](declarations/createscolimitsofnatiso.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [createsColimitsOfShapeOfEquiv](declarations/createscolimitsofshapeofequiv.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [liftsToLimitOfCreates](declarations/liftstolimitofcreates.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [liftsToColimitOfCreates](declarations/liftstocolimitofcreates.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [idLiftsCone](declarations/idliftscone.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [idCreatesLimits](declarations/idcreateslimits.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [idLiftsCocone](declarations/idliftscocone.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [idCreatesColimits](declarations/idcreatescolimits.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [inhabitedLiftableCone](declarations/inhabitedliftablecone.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [inhabitedLiftableCocone](declarations/inhabitedliftablecocone.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [inhabitedLiftsToLimit](declarations/inhabitedliftstolimit.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [inhabitedLiftsToColimit](declarations/inhabitedliftstocolimit.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [compCreatesLimit](declarations/compcreateslimit.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [compCreatesLimitsOfShape](declarations/compcreateslimitsofshape.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [compCreatesLimits](declarations/compcreateslimits.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [compCreatesColimit](declarations/compcreatescolimit.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [compCreatesColimitsOfShape](declarations/compcreatescolimitsofshape.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [compCreatesColimits](declarations/compcreatescolimits.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a59498cfa772b2cf206b16be3ae2fee239a82339a018343f4d43252a4cd7397 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant05c91f74eb45b6ec7c8acc2c741d8c0db81490c5d8e4dc1ea701c81b571524d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
