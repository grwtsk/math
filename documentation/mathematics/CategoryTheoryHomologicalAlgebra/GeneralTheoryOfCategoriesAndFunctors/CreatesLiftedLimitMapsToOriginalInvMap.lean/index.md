# Creates Lifted Limit Maps To Original Inv Map

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant73551384beaa1244ebe4197547e8190cbfd2a2d08704b99afd2fed06c81ca539.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08d325d60df547c229e589cfd610fcbdad42a4a0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesLiftedLimitMapsToOriginalInvMap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LiftableCone](declarations/liftablecone.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LiftableCocone](declarations/liftablecocone.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [CreatesLimit](declarations/createslimit.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [CreatesLimitsOfShape](declarations/createslimitsofshape.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [CreatesLimitsOfSize](declarations/createslimitsofsize.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [CreatesLimits](declarations/createslimits.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [CreatesColimit](declarations/createscolimit.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [CreatesColimitsOfShape](declarations/createscolimitsofshape.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [CreatesColimitsOfSize](declarations/createscolimitsofsize.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [CreatesColimits](declarations/createscolimits.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [liftLimit](declarations/liftlimit.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [liftedLimitMapsToOriginal](declarations/liftedlimitmapstooriginal.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [liftedLimitMapsToOriginal_inv_map_π](declarations/liftedlimitmapstooriginal-inv-map.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [liftedLimitIsLimit](declarations/liftedlimitislimit.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasLimit_of_created](declarations/haslimit-of-created.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape](declarations/haslimitsofshape-of-haslimitsofshape-createslimitsofshape.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasLimits_of_hasLimits_createsLimits](declarations/haslimits-of-haslimits-createslimits.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [liftColimit](declarations/liftcolimit.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [liftedColimitMapsToOriginal](declarations/liftedcolimitmapstooriginal.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [liftedColimitIsColimit](declarations/liftedcolimitiscolimit.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasColimit_of_created](declarations/hascolimit-of-created.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape](declarations/hascolimitsofshape-of-hascolimitsofshape-createscolimitsofshape.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasColimits_of_hasColimits_createsColimits](declarations/hascolimits-of-hascolimits-createscolimits.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [LiftsToLimit](declarations/liftstolimit.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [LiftsToColimit](declarations/liftstocolimit.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [createsLimitOfReflectsIso](declarations/createslimitofreflectsiso.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [createsLimitOfReflectsIso'](declarations/createslimitofreflectsiso-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [createsLimitOfReflectsIsomorphismsOfPreserves](declarations/createslimitofreflectsisomorphismsofpreserves.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [createsLimitOfFullyFaithfulOfLift'](declarations/createslimitoffullyfaithfuloflift.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [createsLimitOfFullyFaithfulOfLift](declarations/createslimitoffullyfaithfuloflift-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [createsLimitOfFullyFaithfulOfIso'](declarations/createslimitoffullyfaithfulofiso-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [createsLimitOfFullyFaithfulOfIso](declarations/createslimitoffullyfaithfulofiso.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [createsLimitOfFullyFaithfulOfPreserves](declarations/createslimitoffullyfaithfulofpreserves.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [preservesLimitOfCreatesLimitAndHasLimit](declarations/preserveslimitofcreateslimitandhaslimit.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [preservesLimitOfShapeOfCreatesLimitsOfShapeAndHasLimitsOfShape](declarations/preserveslimitofshapeofcreateslimitsofshapeandhaslimitsofshape.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [preservesLimitsOfCreatesLimitsAndHasLimits](declarations/preserveslimitsofcreateslimitsandhaslimits.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [createsColimitOfReflectsIso](declarations/createscolimitofreflectsiso.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [createsColimitOfReflectsIso'](declarations/createscolimitofreflectsiso-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [createsColimitOfReflectsIsomorphismsOfPreserves](declarations/createscolimitofreflectsisomorphismsofpreserves.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [createsColimitOfFullyFaithfulOfLift'](declarations/createscolimitoffullyfaithfuloflift-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [createsColimitOfFullyFaithfulOfLift](declarations/createscolimitoffullyfaithfuloflift.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [createsColimitOfFullyFaithfulOfIso'](declarations/createscolimitoffullyfaithfulofiso-source-edition-2.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [createsColimitOfFullyFaithfulOfIso](declarations/createscolimitoffullyfaithfulofiso.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [preservesColimitOfCreatesColimitAndHasColimit](declarations/preservescolimitofcreatescolimitandhascolimit.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [preservesColimitOfShapeOfCreatesColimitsOfShapeAndHasColimitsOfShape](declarations/preservescolimitofshapeofcreatescolimitsofshapeandhascolimitsofshape.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [preservesColimitsOfCreatesColimitsAndHasColimits](declarations/preservescolimitsofcreatescolimitsandhascolimits.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [createsLimitOfIsoDiagram](declarations/createslimitofisodiagram.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [createsLimitOfNatIso](declarations/createslimitofnatiso.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [createsLimitsOfShapeOfNatIso](declarations/createslimitsofshapeofnatiso.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [createsLimitsOfNatIso](declarations/createslimitsofnatiso.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [createsLimitsOfShapeOfEquiv](declarations/createslimitsofshapeofequiv.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [createsColimitOfIsoDiagram](declarations/createscolimitofisodiagram.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [createsColimitOfNatIso](declarations/createscolimitofnatiso.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [createsColimitsOfShapeOfNatIso](declarations/createscolimitsofshapeofnatiso.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [createsColimitsOfNatIso](declarations/createscolimitsofnatiso.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [createsColimitsOfShapeOfEquiv](declarations/createscolimitsofshapeofequiv.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [liftsToLimitOfCreates](declarations/liftstolimitofcreates.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [liftsToColimitOfCreates](declarations/liftstocolimitofcreates.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [idLiftsCone](declarations/idliftscone.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [idCreatesLimits](declarations/idcreateslimits.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [idLiftsCocone](declarations/idliftscocone.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [idCreatesColimits](declarations/idcreatescolimits.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [inhabitedLiftableCone](declarations/inhabitedliftablecone.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [inhabitedLiftableCocone](declarations/inhabitedliftablecocone.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [inhabitedLiftsToLimit](declarations/inhabitedliftstolimit.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [inhabitedLiftsToColimit](declarations/inhabitedliftstocolimit.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [compCreatesLimit](declarations/compcreateslimit.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [compCreatesLimitsOfShape](declarations/compcreateslimitsofshape.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [compCreatesLimits](declarations/compcreateslimits.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [compCreatesColimit](declarations/compcreatescolimit.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [compCreatesColimitsOfShape](declarations/compcreatescolimitsofshape.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [compCreatesColimits](declarations/compcreatescolimits.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9d78fc6504cc8313bc46be33903faab31c093d6c1237f0029360c8363f0e652 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant73551384beaa1244ebe4197547e8190cbfd2a2d08704b99afd2fed06c81ca539.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
