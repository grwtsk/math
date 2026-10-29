# Rado Modular Heatflow

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**103 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7f59ed55948fcdef5e4037fa96f5f4a362e3adc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SubsetMode](declarations/subsetmode.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [ProjectionOption](declarations/projectionoption.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [HeatKernelOption](declarations/heatkerneloption.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [HeatGraphOption](declarations/heatgraphoption.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [GroupOption](declarations/groupoption.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [ModularRepresentationOption](declarations/modularrepresentationoption.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [WeightRuleOption](declarations/weightruleoption.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [QCoefficientOption](declarations/qcoefficientoption.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [ResidueModelOption](declarations/residuemodeloption.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [PairCorrelationOption](declarations/paircorrelationoption.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [LayoutOption](declarations/layoutoption.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [WitnessPolicyOption](declarations/witnesspolicyoption.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [WitnessAttachmentOption](declarations/witnessattachmentoption.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `inductive` | [CoordinateOption](declarations/coordinateoption.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Options](declarations/options.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [defaultOptions](declarations/defaultoptions.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [allSubsetModes](declarations/allsubsetmodes.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [allProjectionOptions](declarations/allprojectionoptions.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [allWitnessPolicies](declarations/allwitnesspolicies.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [allHeatKernelOptions](declarations/allheatkerneloptions.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [allHeatGraphOptions](declarations/allheatgraphoptions.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [allGroupOptions](declarations/allgroupoptions.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [allModularRepresentationOptions](declarations/allmodularrepresentationoptions.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [allWeightRuleOptions](declarations/allweightruleoptions.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [allQCoefficientOptions](declarations/allqcoefficientoptions.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [allResidueModelOptions](declarations/allresiduemodeloptions.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [allPairCorrelationOptions](declarations/allpaircorrelationoptions.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [allLayoutOptions](declarations/alllayoutoptions.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [allWitnessAttachmentOptions](declarations/allwitnessattachmentoptions.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [allCoordinateOptions](declarations/allcoordinateoptions.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [RadoGraph](declarations/radograph.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [centerBitRadoGraph](declarations/centerbitradograph.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [centerBitRadoGraph_symmetric](declarations/centerbitradograph-symmetric.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [centerBitRadoGraph_irreflexive](declarations/centerbitradograph-irreflexive.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [centerBitRadoGraph_extensionProperty](declarations/centerbitradograph-extensionproperty.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [centerBitRadoExtension_has_no_residue](declarations/centerbitradoextension-has-no-residue.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [RootedTree](declarations/rootedtree.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [Projection](declarations/projection.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [sameFiber](declarations/samefiber.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [WeightedHybridGraph](declarations/weightedhybridgraph.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [HeatState](declarations/heatstate.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [Embedding](declarations/embedding.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [HeatCentroid](declarations/heatcentroid.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [UpperHalfPlanePoint](declarations/upperhalfplanepoint.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [EvenWeight](declarations/evenweight.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [EvenWeight.value](declarations/evenweight-value.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [EvenWeight.value_mod_two](declarations/evenweight-value-mod-two.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [QExpansion](declarations/qexpansion.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [SL2ZLabel](declarations/sl2zlabel.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [GroupAction](declarations/groupaction.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [ModularData](declarations/modulardata.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [ParentResidue](declarations/parentresidue.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [RadoWitnessRequest](declarations/radowitnessrequest.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [RadoWitness](declarations/radowitness.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `structure` | [PairCorrelationRegularizer](declarations/paircorrelationregularizer.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `structure` | [EllipticCurveShadow](declarations/ellipticcurveshadow.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `structure` | [ObjectiveComponents](declarations/objectivecomponents.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `structure` | [AlgorithmState](declarations/algorithmstate.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `inductive` | [TerminationCriterion](declarations/terminationcriterion.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [CountableExhaustionReceipt](declarations/countableexhaustionreceipt.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `structure` | [AlgorithmOutput](declarations/algorithmoutput.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `inductive` | [Atom](declarations/atom.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [Atom.id](declarations/atom-id.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [Atom.kind](declarations/atom-kind.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Atom.blocks](declarations/atom-blocks.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [Atom.clearsBy](declarations/atom-clearsby.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [atomResidue](declarations/atomresidue.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [allAtoms](declarations/allatoms.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `structure` | [Context](declarations/context.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [finalClaim](declarations/finalclaim.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [finalResidues](declarations/finalresidues.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [finalWitness](declarations/finalwitness.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [finalWitness_hasResidue](declarations/finalwitness-hasresidue.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [finalResidue_count](declarations/finalresidue-count.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [allAtoms_count](declarations/allatoms-count.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [allSubsetModes_count](declarations/allsubsetmodes-count.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [allProjectionOptions_count](declarations/allprojectionoptions-count.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [allWitnessPolicies_count](declarations/allwitnesspolicies-count.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [allHeatKernelOptions_count](declarations/allheatkerneloptions-count.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [allHeatGraphOptions_count](declarations/allheatgraphoptions-count.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [allGroupOptions_count](declarations/allgroupoptions-count.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [allModularRepresentationOptions_count](declarations/allmodularrepresentationoptions-count.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [allWeightRuleOptions_count](declarations/allweightruleoptions-count.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [allQCoefficientOptions_count](declarations/allqcoefficientoptions-count.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [allResidueModelOptions_count](declarations/allresiduemodeloptions-count.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [allPairCorrelationOptions_count](declarations/allpaircorrelationoptions-count.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [allLayoutOptions_count](declarations/alllayoutoptions-count.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [allWitnessAttachmentOptions_count](declarations/allwitnessattachmentoptions-count.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [allCoordinateOptions_count](declarations/allcoordinateoptions-count.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `structure` | [JepaHeatflowSeed](declarations/jepaheatflowseed.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [JepaHeatflowSeed.statusAllowed](declarations/jepaheatflowseed-statusallowed.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [JepaHeatflowSeed.nonclaimsPresent](declarations/jepaheatflowseed-nonclaimspresent.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [JepaHeatflowSeed.acceptedForJepa](declarations/jepaheatflowseed-acceptedforjepa.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [JepaHeatflowSeed.toResidue](declarations/jepaheatflowseed-toresidue.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [JepaHeatflowSeed.admissionResidue](declarations/jepaheatflowseed-admissionresidue.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [JepaHeatflowSeed.residues](declarations/jepaheatflowseed-residues.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [jepaSeedClaim](declarations/jepaseedclaim.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [checkedJepaSeed](declarations/checkedjepaseed.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [checkedJepaSeed_hasResidue](declarations/checkedjepaseed-hasresidue.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [sampleSeed](declarations/sampleseed.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [sampleSeed_acceptedForJepa](declarations/sampleseed-acceptedforjepa.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [sampleSeed_checked_hasResidue](declarations/sampleseed-checked-hasresidue.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [sampleSeed_residue_target](declarations/sampleseed-residue-target.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f424223f46d9f6f1ef3b28af770b0f4558c166d3a5c1323bfb9e56c67b54e40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
