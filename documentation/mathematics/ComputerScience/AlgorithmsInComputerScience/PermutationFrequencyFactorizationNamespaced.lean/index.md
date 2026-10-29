# Permutation Frequency Factorization Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29f5e1505c6a0370c32d09d5404f8985e19f3f35`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/PermutationFrequencyFactorizationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CoordinatePermutation](declarations/coordinatepermutation.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [id](declarations/id.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [symm](declarations/symm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [comp](declarations/comp.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext](declarations/ext.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [comp_id_left](declarations/comp-id-left.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comp_id_right](declarations/comp-id-right.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [symm_comp_self](declarations/symm-comp-self.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_symm_self](declarations/comp-symm-self.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [permutePoint](declarations/permutepoint.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [permuteFunction](declarations/permutefunction.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [permuteFrequency](declarations/permutefrequency.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [permutePoint_id](declarations/permutepoint-id.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [permuteFunction_id](declarations/permutefunction-id.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [permuteFrequency_id](declarations/permutefrequency-id.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [permutePoint_comp](declarations/permutepoint-comp.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [permuteFunction_comp](declarations/permutefunction-comp.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [permuteFrequency_comp](declarations/permutefrequency-comp.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [permutePoint_symm_permutePoint](declarations/permutepoint-symm-permutepoint.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [permutePoint_permutePoint_symm](declarations/permutepoint-permutepoint-symm.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [permuteFunction_symm_permuteFunction](declarations/permutefunction-symm-permutefunction.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pointDecEq](declarations/pointdeceq.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instPointDecEq](declarations/instpointdeceq.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mulStep](declarations/mulstep.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [prodInt_foldl_eq](declarations/prodint-foldl-eq.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [prodInt_cons](declarations/prodint-cons.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [prodInt_nil](declarations/prodint-nil.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prodInt_append](declarations/prodint-append.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [prodInt_map_congr](declarations/prodint-map-congr.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sumInt_perm](declarations/sumint-perm.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [prodInt_perm](declarations/prodint-perm.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [count_map_of_inverse](declarations/count-map-of-inverse.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [count_map_of_injective](declarations/count-map-of-injective.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [count_finRange](declarations/count-finrange.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [extend_dropLast_last](declarations/extend-droplast-last.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [eq_extend_iff](declarations/eq-extend-iff.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [count_vertices](declarations/count-vertices.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [vertices_map_perm](declarations/vertices-map-perm.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sumInt_map_vertices_reindex](declarations/sumint-map-vertices-reindex.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [prodInt_map_finRange_reindex](declarations/prodint-map-finrange-reindex.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [character_eq_prod](declarations/character-eq-prod.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [character_reindex](declarations/character-reindex.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [character_permutePoint](declarations/character-permutepoint.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [walsh_character_permutation_equivariant](declarations/walsh-character-permutation-equivariant.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [walsh_projection_permutation_equivariant](declarations/walsh-projection-permutation-equivariant.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [FiniteCoordinateGroup](declarations/finitecoordinategroup.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [FiniteCoordinateGroup.Contains](declarations/finitecoordinategroup-contains.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [OrbitEquivalent](declarations/orbitequivalent.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [orbitEquivalent_refl](declarations/orbitequivalent-refl.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [orbitEquivalent_symm](declarations/orbitequivalent-symm.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [orbitEquivalent_trans](declarations/orbitequivalent-trans.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [functionCode](declarations/functioncode.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [lexLeIntList](declarations/lexleintlist.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [lexLtIntList](declarations/lexltintlist.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lexLeIntList_refl](declarations/lexleintlist-refl.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lexLtIntList_irrefl](declarations/lexltintlist-irrefl.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [lexLeIntList_antisymm](declarations/lexleintlist-antisymm.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [CanonicalRepresentativeCertificate](declarations/canonicalrepresentativecertificate.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [canonicalRepresentative](declarations/canonicalrepresentative.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [canonicalRepresentative_inOrbit](declarations/canonicalrepresentative-inorbit.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [canonicalRepresentative_minimal](declarations/canonicalrepresentative-minimal.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [canonicalRepresentative_unique_code](declarations/canonicalrepresentative-unique-code.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [FrequencyOrbitEquivalent](declarations/frequencyorbitequivalent.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [FrequencyOrbitProfileRow](declarations/frequencyorbitprofilerow.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `structure` | [FrequencyOrbitProfile](declarations/frequencyorbitprofile.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [FrequencyOrbitProfileInvariance](declarations/frequencyorbitprofileinvariance.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [frequencyOrbitProfile_invariant](declarations/frequencyorbitprofile-invariant.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [projection_square_equivariant](declarations/projection-square-equivariant.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `structure` | [OrderedFactorInterpreter](declarations/orderedfactorinterpreter.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `structure` | [OrderedFactorRealization](declarations/orderedfactorrealization.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `structure` | [CanonicalOrderedFactorCertificate](declarations/canonicalorderedfactorcertificate.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [orderedFactor_realizes](declarations/orderedfactor-realizes.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [OrderedFactorTreeOwnsAnalyticTheorem](declarations/orderedfactortreeownsanalytictheorem.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [orderedFactorTree_not_analytic_authority](declarations/orderedfactortree-not-analytic-authority.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `structure` | [PFFactorization](declarations/pffactorization.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [PFFactorization.canonicalRepresentative](declarations/pffactorization-canonicalrepresentative.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [PFFactorization.orderedFactor](declarations/pffactorization-orderedfactor.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [PFFactorization.frequencyOrbitProfile](declarations/pffactorization-frequencyorbitprofile.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [pff_canonical_representative_in_orbit](declarations/pff-canonical-representative-in-orbit.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [pff_ordered_factor_realizes_canonical](declarations/pff-ordered-factor-realizes-canonical.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [pff_canonical_spectrum_sound](declarations/pff-canonical-spectrum-sound.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [pff_walsh_projection_equivariant](declarations/pff-walsh-projection-equivariant.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [pff_complete_invariant](declarations/pff-complete-invariant.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [permutation_frequency_factorization_theorem](declarations/permutation-frequency-factorization-theorem.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [PFFactorizationOwnsAnalyticTheorem](declarations/pffactorizationownsanalytictheorem.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [pff_not_analytic_authority](declarations/pff-not-analytic-authority.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [pff_boundary_summary](declarations/pff-boundary-summary.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26131652ed143ad3ebc3f14a58c0577b27b06e865a0ed16f0d32264f7508b7d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
