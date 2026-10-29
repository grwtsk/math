# Prismatic Shape Update ZKPNamespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6396686b643722db1295f2e7b251fdd0e0016d1b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ValuationBox](declarations/valuationbox.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [valuationMobius](declarations/valuationmobius.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [PrismaticBoundaryData](declarations/prismaticboundarydata.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [BoundedValuationBox](declarations/boundedvaluationbox.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [BoundedMobiusReduction](declarations/boundedmobiusreduction.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [bounded_mobius_reduction_weight_sound](declarations/bounded-mobius-reduction-weight-sound.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [bounded_mobius_reduction_support_sound](declarations/bounded-mobius-reduction-support-sound.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [bounded_mobius_reduction_primePowerFlag_sound](declarations/bounded-mobius-reduction-primepowerflag-sound.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [BooleanTreeMatrixProjection](declarations/booleantreematrixprojection.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [TreeMatrixLoweringIsExternalAuthority](declarations/treematrixloweringisexternalauthority.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ProjectionShadowIsHilbertSpace](declarations/projectionshadowishilbertspace.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ProjectionShadowIsPrismaticGeometry](declarations/projectionshadowisprismaticgeometry.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [projection_shadow_not_hilbert_space](declarations/projection-shadow-not-hilbert-space.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [projection_shadow_not_prismatic_geometry](declarations/projection-shadow-not-prismatic-geometry.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tree_matrix_lowering_is_finite_execution_kernel](declarations/tree-matrix-lowering-is-finite-execution-kernel.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [DyadicScale](declarations/dyadicscale.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [DyadicProjectionStability](declarations/dyadicprojectionstability.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [AssumesExactRawForwardCycleFlatness](declarations/assumesexactrawforwardcycleflatness.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [dyadic_stability_does_not_assume_exact_raw_flatness](declarations/dyadic-stability-does-not-assume-exact-raw-flatness.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [PrismaticShapeAuthority](declarations/prismaticshapeauthority.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [ConnesSpectralTraceAuthority](declarations/connesspectraltraceauthority.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [DeterminantAuthority](declarations/determinantauthority.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [ArithmeticTorsionAuthority](declarations/arithmetictorsionauthority.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [KernelInternalizesGlobalConnesTrace](declarations/kernelinternalizesglobalconnestrace.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [kernel_does_not_internalize_global_connes_trace](declarations/kernel-does-not-internalize-global-connes-trace.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [ImportedShapeUpdateCertificateSemantics](declarations/importedshapeupdatecertificatesemantics.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ZKPBackendAssumptions](declarations/zkpbackendassumptions.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [imported_shape_update_certificate_boundary_matches](declarations/imported-shape-update-certificate-boundary-matches.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ZKPBackendSoundnessStatement](declarations/zkpbackendsoundnessstatement.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [zkp_backend_assumptions_expose_soundness_statement](declarations/zkp-backend-assumptions-expose-soundness-statement.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [PrismaticShapeState](declarations/prismaticshapestate.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [PrismaticShapeUpdateInput](declarations/prismaticshapeupdateinput.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [ShapeUpdatePublicStatement](declarations/shapeupdatepublicstatement.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [DyadicNumeratorRepresentative](declarations/dyadicnumeratorrepresentative.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [HashTransitionConstraint](declarations/hashtransitionconstraint.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [CertificateDigests](declarations/certificatedigests.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ShapeUpdatePublicStatement.certificateDigests](declarations/shapeupdatepublicstatement-certificatedigests.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [ShapeUpdatePublicStatement.stateHashTransition](declarations/shapeupdatepublicstatement-statehashtransition.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [FiniteZKPRepresentativePolicy](declarations/finitezkprepresentativepolicy.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [FiniteZKPRepresentativePolicy.matchesPublicStatement](declarations/finitezkprepresentativepolicy-matchespublicstatement.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finite_zkp_representative_uses_public_kappa](declarations/finite-zkp-representative-uses-public-kappa.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finite_zkp_representative_matches_public_kappa](declarations/finite-zkp-representative-matches-public-kappa.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finite_zkp_representative_matches_certificate_digests](declarations/finite-zkp-representative-matches-certificate-digests.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [finite_zkp_representative_carries_hash_transition](declarations/finite-zkp-representative-carries-hash-transition.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [ShapeUpdatePrivateWitness](declarations/shapeupdateprivatewitness.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [LocalShapeUpdateZKPRelation](declarations/localshapeupdatezkprelation.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [local_shape_update_verifies_finite_mobius](declarations/local-shape-update-verifies-finite-mobius.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [local_shape_update_verifies_tree_matrix_projection](declarations/local-shape-update-verifies-tree-matrix-projection.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [local_shape_update_uses_external_prismatic_authority](declarations/local-shape-update-uses-external-prismatic-authority.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [local_shape_update_routes_spectral_trace_externally](declarations/local-shape-update-routes-spectral-trace-externally.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [local_shape_update_does_not_internalize_connes_trace](declarations/local-shape-update-does-not-internalize-connes-trace.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [local_shape_update_does_not_assume_raw_forward_cycle_flatness](declarations/local-shape-update-does-not-assume-raw-forward-cycle-flatness.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [local_shape_update_torsion_not_from_field_homology](declarations/local-shape-update-torsion-not-from-field-homology.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [local_shape_update_projection_flag_backed](declarations/local-shape-update-projection-flag-backed.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [local_shape_update_prismatic_flag_backed](declarations/local-shape-update-prismatic-flag-backed.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [local_shape_update_spectral_flag_backed](declarations/local-shape-update-spectral-flag-backed.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [local_shape_update_determinant_flag_backed](declarations/local-shape-update-determinant-flag-backed.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [local_shape_update_torsion_flag_backed](declarations/local-shape-update-torsion-flag-backed.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [PrismaticShapeUpdateInput.toBoundaryData](declarations/prismaticshapeupdateinput-toboundarydata.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [toBoundaryData_preserves_mobius](declarations/toboundarydata-preserves-mobius.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [fieldOnly_recovery_blocked_by_collision](declarations/fieldonly-recovery-blocked-by-collision.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [exampleValuation](declarations/examplevaluation.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [exampleBounds](declarations/examplebounds.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [exampleBoundedValuation](declarations/exampleboundedvaluation.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [exampleMobiusReduction](declarations/examplemobiusreduction.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [exampleProjection](declarations/exampleprojection.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [exampleDyadicScale](declarations/exampledyadicscale.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [exampleDyadicStability](declarations/exampledyadicstability.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [examplePrismaticAuthority](declarations/exampleprismaticauthority.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [exampleSpectralAuthority](declarations/examplespectralauthority.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [exampleDeterminantAuthority](declarations/exampledeterminantauthority.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [exampleTorsionAuthority](declarations/exampletorsionauthority.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [examplePriorState](declarations/examplepriorstate.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [exampleNextState](declarations/examplenextstate.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [exampleInput](declarations/exampleinput.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [examplePublic](declarations/examplepublic.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [exampleWitness](declarations/examplewitness.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [exampleRelation](declarations/examplerelation.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [example_update_verifies_projection](declarations/example-update-verifies-projection.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [example_update_does_not_internalize_connes_trace](declarations/example-update-does-not-internalize-connes-trace.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [example_update_does_not_assume_raw_forward_cycle_flatness](declarations/example-update-does-not-assume-raw-forward-cycle-flatness.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5678142eda07b820e50ef18cfe9454ead0e131ad2d2fde1e261419de60b08f74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
