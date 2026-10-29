# Permutation Frequency Factorization

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f1fb11d34de52fbbb2206f96aaf1f31fbf53079`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/PermutationFrequencyFactorization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CoordinatePermutation](declarations/coordinatepermutation.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [id](declarations/id.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [symm](declarations/symm.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [comp](declarations/comp.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext](declarations/ext.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [comp_id_left](declarations/comp-id-left.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comp_id_right](declarations/comp-id-right.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [symm_comp_self](declarations/symm-comp-self.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_symm_self](declarations/comp-symm-self.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [permutePoint](declarations/permutepoint.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [permuteFunction](declarations/permutefunction.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [permuteFrequency](declarations/permutefrequency.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [permutePoint_id](declarations/permutepoint-id.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [permuteFunction_id](declarations/permutefunction-id.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [permuteFrequency_id](declarations/permutefrequency-id.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [permutePoint_comp](declarations/permutepoint-comp.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [permuteFunction_comp](declarations/permutefunction-comp.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [permuteFrequency_comp](declarations/permutefrequency-comp.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [permutePoint_symm_permutePoint](declarations/permutepoint-symm-permutepoint.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [permutePoint_permutePoint_symm](declarations/permutepoint-permutepoint-symm.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [permuteFunction_symm_permuteFunction](declarations/permutefunction-symm-permutefunction.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pointDecEq](declarations/pointdeceq.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instPointDecEq](declarations/instpointdeceq.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mulStep](declarations/mulstep.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [prodInt_foldl_eq](declarations/prodint-foldl-eq.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [prodInt_cons](declarations/prodint-cons.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [prodInt_nil](declarations/prodint-nil.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prodInt_append](declarations/prodint-append.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [prodInt_map_congr](declarations/prodint-map-congr.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sumInt_perm](declarations/sumint-perm.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [prodInt_perm](declarations/prodint-perm.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [count_map_of_inverse](declarations/count-map-of-inverse.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [count_map_of_injective](declarations/count-map-of-injective.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [count_finRange](declarations/count-finrange.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [extend_dropLast_last](declarations/extend-droplast-last.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [eq_extend_iff](declarations/eq-extend-iff.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [count_vertices](declarations/count-vertices.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [vertices_map_perm](declarations/vertices-map-perm.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sumInt_map_vertices_reindex](declarations/sumint-map-vertices-reindex.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [prodInt_map_finRange_reindex](declarations/prodint-map-finrange-reindex.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [character_eq_prod](declarations/character-eq-prod.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [character_reindex](declarations/character-reindex.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [character_permutePoint](declarations/character-permutepoint.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [walsh_character_permutation_equivariant](declarations/walsh-character-permutation-equivariant.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [walsh_projection_permutation_equivariant](declarations/walsh-projection-permutation-equivariant.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [FiniteCoordinateGroup](declarations/finitecoordinategroup.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [FiniteCoordinateGroup.Contains](declarations/finitecoordinategroup-contains.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [OrbitEquivalent](declarations/orbitequivalent.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [orbitEquivalent_refl](declarations/orbitequivalent-refl.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [orbitEquivalent_symm](declarations/orbitequivalent-symm.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [orbitEquivalent_trans](declarations/orbitequivalent-trans.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [functionCode](declarations/functioncode.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [lexLeIntList](declarations/lexleintlist.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [lexLtIntList](declarations/lexltintlist.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lexLeIntList_refl](declarations/lexleintlist-refl.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lexLtIntList_irrefl](declarations/lexltintlist-irrefl.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [lexLeIntList_antisymm](declarations/lexleintlist-antisymm.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [CanonicalRepresentativeCertificate](declarations/canonicalrepresentativecertificate.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [canonicalRepresentative](declarations/canonicalrepresentative.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [canonicalRepresentative_inOrbit](declarations/canonicalrepresentative-inorbit.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [canonicalRepresentative_minimal](declarations/canonicalrepresentative-minimal.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [canonicalRepresentative_unique_code](declarations/canonicalrepresentative-unique-code.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [FrequencyOrbitEquivalent](declarations/frequencyorbitequivalent.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [FrequencyOrbitProfileRow](declarations/frequencyorbitprofilerow.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `structure` | [FrequencyOrbitProfile](declarations/frequencyorbitprofile.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [FrequencyOrbitProfileInvariance](declarations/frequencyorbitprofileinvariance.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [frequencyOrbitProfile_invariant](declarations/frequencyorbitprofile-invariant.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [projection_square_equivariant](declarations/projection-square-equivariant.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `structure` | [OrderedFactorInterpreter](declarations/orderedfactorinterpreter.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `structure` | [OrderedFactorRealization](declarations/orderedfactorrealization.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `structure` | [CanonicalOrderedFactorCertificate](declarations/canonicalorderedfactorcertificate.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [orderedFactor_realizes](declarations/orderedfactor-realizes.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [OrderedFactorTreeOwnsAnalyticTheorem](declarations/orderedfactortreeownsanalytictheorem.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [orderedFactorTree_not_analytic_authority](declarations/orderedfactortree-not-analytic-authority.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `structure` | [PFFactorization](declarations/pffactorization.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [PFFactorization.canonicalRepresentative](declarations/pffactorization-canonicalrepresentative.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [PFFactorization.orderedFactor](declarations/pffactorization-orderedfactor.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [PFFactorization.frequencyOrbitProfile](declarations/pffactorization-frequencyorbitprofile.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [pff_canonical_representative_in_orbit](declarations/pff-canonical-representative-in-orbit.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [pff_ordered_factor_realizes_canonical](declarations/pff-ordered-factor-realizes-canonical.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [pff_canonical_spectrum_sound](declarations/pff-canonical-spectrum-sound.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [pff_walsh_projection_equivariant](declarations/pff-walsh-projection-equivariant.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [pff_complete_invariant](declarations/pff-complete-invariant.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [permutation_frequency_factorization_theorem](declarations/permutation-frequency-factorization-theorem.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [PFFactorizationOwnsAnalyticTheorem](declarations/pffactorizationownsanalytictheorem.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [pff_not_analytic_authority](declarations/pff-not-analytic-authority.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [pff_boundary_summary](declarations/pff-boundary-summary.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fd034d3fcd4215fdfbed2694031dbe4b82727ea49c0e99788b8b1b83f5084d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
