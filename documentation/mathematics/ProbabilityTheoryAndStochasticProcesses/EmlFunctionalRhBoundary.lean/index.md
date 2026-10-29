# Eml Functional Rh Boundary

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**118 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFunctionalRhBoundary/Variante72e8ca73be0f8e28bc3041f346fcc48eb576df9291b3781960dc6991071c984.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61b427250eccec92c51ce5c2a61cdb2161e01573`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/EmlFunctionalRhBoundary.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryPoint](declarations/boundarypoint.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toFourPointBoundaryPoint](declarations/tofourpointboundarypoint.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [NullBsdBraidBoundary](declarations/nullbsdbraidboundary.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [NullBsdBraidAtHalf](declarations/nullbsdbraidathalf.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [EmlBoundaryBit](declarations/emlboundarybit.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [EmlBoundaryBit.toNat](declarations/emlboundarybit-tonat.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [EmlBoundaryBit.degenerate](declarations/emlboundarybit-degenerate.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [EmlBoundaryBit.nondegenerate](declarations/emlboundarybit-nondegenerate.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundaryBitFromDegenerate](declarations/boundarybitfromdegenerate.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [boundaryBitFromNondegenerate](declarations/boundarybitfromnondegenerate.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [EmlResiduePolarity](declarations/emlresiduepolarity.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [EmlResiduePolarity.toInt](declarations/emlresiduepolarity-toint.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [EmlFunctionalRhResidue](declarations/emlfunctionalrhresidue.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [EmlFunctionalRhResidue.token](declarations/emlfunctionalrhresidue-token.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [requiredFunctionalRhResidues](declarations/requiredfunctionalrhresidues.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [EmlOperation](declarations/emloperation.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [allEmlFunctionalRhOperations](declarations/allemlfunctionalrhoperations.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [EmlTreeId](declarations/emltreeid.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [EmlVertex](declarations/emlvertex.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [EmlEdge](declarations/emledge.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [EmlRootedCover](declarations/emlrootedcover.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [EmlTree](declarations/emltree.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [mkEmlTree](declarations/mkemltree.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [formalSurfaceImportTree](declarations/formalsurfaceimporttree.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [nullRootTree](declarations/nullroottree.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [bitResidueTree](declarations/bitresiduetree.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [forestNonOverlapTree](declarations/forestnonoverlaptree.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toposDescentTree](declarations/toposdescenttree.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [functionalRhTree](declarations/functionalrhtree.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [radoCenterTree](declarations/radocentertree.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [spinFlipTree](declarations/spinfliptree.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [nonClaimsTree](declarations/nonclaimstree.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [EmlForest](declarations/emlforest.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [functionalRhEmlForest](declarations/functionalrhemlforest.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [containsVertex](declarations/containsvertex.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [containsEdge](declarations/containsedge.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [EmlTree.verticesOutsideRoot](declarations/emltree-verticesoutsideroot.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [hasSharedVertexOutsideRoot](declarations/hassharedvertexoutsideroot.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [treePairOverlapOnlyAtRoot](declarations/treepairoverlaponlyatroot.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [treePairEdgesDisjoint](declarations/treepairedgesdisjoint.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [pairwiseBy](declarations/pairwiseby.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [EmlForest.allRootsAreNull](declarations/emlforest-allrootsarenull.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [EmlForest.overlapOnlyAtCommonRoot](declarations/emlforest-overlaponlyatcommonroot.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [EmlForest.edgesPairwiseDisjoint](declarations/emlforest-edgespairwisedisjoint.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [coverIsRooted](declarations/coverisrooted.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [EmlForest.everyCoverRooted](declarations/emlforest-everycoverrooted.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [countOperation](declarations/countoperation.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [operationsOfTrees](declarations/operationsoftrees.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [EmlForest.operations](declarations/emlforest-operations.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [EmlForest.everyOperationExactlyOnce](declarations/emlforest-everyoperationexactlyonce.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [EmlTree.residueAtLeaves](declarations/emltree-residueatleaves.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [EmlForest.everyResidueAtLeaf](declarations/emlforest-everyresidueatleaf.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [EmlBoundarySite](declarations/emlboundarysite-source-edition-2.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [verticesOfTrees](declarations/verticesoftrees.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [edgesOfTrees](declarations/edgesoftrees.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [emlBoundarySite](declarations/emlboundarysite.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `structure` | [CoveringSieve](declarations/coveringsieve.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `structure` | [EmlBoundaryTopology](declarations/emlboundarytopology.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [coveringSieveOfTree](declarations/coveringsieveoftree.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [J_eml_boundary](declarations/j-eml-boundary.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `structure` | [RestrictionMap](declarations/restrictionmap.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [restrictionMapOfEdge](declarations/restrictionmapofedge.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `structure` | [EmlBoundaryPresheaf](declarations/emlboundarypresheaf.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [objectAssignmentOfVertex](declarations/objectassignmentofvertex.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [emlBoundaryPresheaf](declarations/emlboundarypresheaf-source-edition-2.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `structure` | [MatchingFamily](declarations/matchingfamily.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [EmlBoundarySheafBoundary](declarations/emlboundarysheafboundary.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [EmlBoundarySheafBoundary.admitted](declarations/emlboundarysheafboundary-admitted.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [EmlBoundarySheaf](declarations/emlboundarysheaf.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [emlBoundarySheaf](declarations/emlboundarysheaf-source-edition-2.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `structure` | [EmlBoundaryGlobalSection](declarations/emlboundaryglobalsection-source-edition-2.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [emlBoundaryGlobalSection](declarations/emlboundaryglobalsection.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `structure` | [EmlBoundaryResidueSection](declarations/emlboundaryresiduesection.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [defaultBoundaryResidueSection](declarations/defaultboundaryresiduesection.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [routeBranchByNaturality](declarations/routebranchbynaturality.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `structure` | [RadoBoundaryGraph](declarations/radoboundarygraph-source-edition-2.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [radoBoundaryGraph](declarations/radoboundarygraph.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `structure` | [MonomialSpinMove](declarations/monomialspinmove.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [monomialSpinMove](declarations/monomialspinmove-source-edition-2.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `structure` | [BinomialFlipMove](declarations/binomialflipmove.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [binomialFlipMove](declarations/binomialflipmove-source-edition-2.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [spinFlipMoveSequence](declarations/spinflipmovesequence.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `structure` | [FunctionalRhBoundaryAttempt](declarations/functionalrhboundaryattempt.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [defaultFunctionalRhBoundaryAttempt](declarations/defaultfunctionalrhboundaryattempt.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `structure` | [EmlTreeDecomposition](declarations/emltreedecomposition.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [defaultEmlTreeDecomposition](declarations/defaultemltreedecomposition.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `structure` | [ToposNaturalityCheck](declarations/toposnaturalitycheck.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [ToposNaturalityCheck.accepts](declarations/toposnaturalitycheck-accepts.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [defaultToposNaturalityCheck](declarations/defaulttoposnaturalitycheck.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `structure` | [BoundaryBit](declarations/boundarybit.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `structure` | [Residue](declarations/residue.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `structure` | [FunctionalRhBoundaryOutput](declarations/functionalrhboundaryoutput.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [noForbiddenClaims](declarations/noforbiddenclaims.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [functionalRhBoundaryPipeline](declarations/functionalrhboundarypipeline.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [defaultFunctionalRhBoundaryOutput](declarations/defaultfunctionalrhboundaryoutput.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [null_bsd_braid_center_is_half](declarations/null-bsd-braid-center-is-half.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [eml_tree_roots_are_null_bsd_braid](declarations/eml-tree-roots-are-null-bsd-braid.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [eml_trees_overlap_only_at_common_root](declarations/eml-trees-overlap-only-at-common-root.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [eml_tree_edges_are_pairwise_disjoint](declarations/eml-tree-edges-are-pairwise-disjoint.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [every_cover_is_rooted](declarations/every-cover-is-rooted.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [every_eml_operation_appears_once](declarations/every-eml-operation-appears-once.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [every_residue_is_at_leaf](declarations/every-residue-is-at-leaf.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [boundary_bit_zero_is_degenerate](declarations/boundary-bit-zero-is-degenerate.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [boundary_bit_one_is_nondegenerate](declarations/boundary-bit-one-is-nondegenerate.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [residue_polarity_values](declarations/residue-polarity-values.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [monomial_spin_preserves_root](declarations/monomial-spin-preserves-root.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [binomial_flip_has_path_zero_one_zero](declarations/binomial-flip-has-path-zero-one-zero.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [binomial_flip_preserves_lineage_or_residue](declarations/binomial-flip-preserves-lineage-or-residue.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [nonnatural_branch_routes_to_residue](declarations/nonnatural-branch-routes-to-residue.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [global_section_requires_unique_amalgamation](declarations/global-section-requires-unique-amalgamation.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [functional_rh_boundary_does_not_claim_rh](declarations/functional-rh-boundary-does-not-claim-rh.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [bsd_braid_boundary_does_not_claim_bsd](declarations/bsd-braid-boundary-does-not-claim-bsd.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [rado_boundary_graph_is_not_theorem_authority](declarations/rado-boundary-graph-is-not-theorem-authority.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [eml_boundary_site_is_finite_surrogate](declarations/eml-boundary-site-is-finite-surrogate.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [j_eml_boundary_records_topology_residue](declarations/j-eml-boundary-records-topology-residue.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [eml_boundary_sheaf_boundary_is_residue_gated](declarations/eml-boundary-sheaf-boundary-is-residue-gated.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [default_functional_rh_boundary_accepts_without_theorem_claim](declarations/default-functional-rh-boundary-accepts-without-theorem-claim.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [imported_half_boundary_point_aligned](declarations/imported-half-boundary-point-aligned.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02139477e1cb890aeba005a728d40bd8df0c2590f8e6ec8490241fd829146ca9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFunctionalRhBoundary/Variante72e8ca73be0f8e28bc3041f346fcc48eb576df9291b3781960dc6991071c984.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
