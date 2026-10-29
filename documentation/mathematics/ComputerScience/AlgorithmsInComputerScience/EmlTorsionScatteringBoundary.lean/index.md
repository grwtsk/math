# Eml Torsion Scattering Boundary

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea5202d6d52efac57654be6dc093068c66196939`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundary.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [TorsionScatteringResidue](declarations/torsionscatteringresidue.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [TorsionScatteringResidue.token](declarations/torsionscatteringresidue-token.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [TorsionClass](declarations/torsionclass.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [torsionPhiResidues](declarations/torsionphiresidues.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [EmlTorsionPacket](declarations/emltorsionpacket.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [PhiTorsion](declarations/phitorsion.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [ScatteringProgression](declarations/scatteringprogression.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [monomialScatteringOperator](declarations/monomialscatteringoperator.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [scatteringIsRingProgression](declarations/scatteringisringprogression.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [scatterTorsionClass](declarations/scattertorsionclass.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [scatterTorsionClasses](declarations/scattertorsionclasses.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [signedRingProgressions](declarations/signedringprogressions.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [torsionResidues](declarations/torsionresidues.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [strictlyOrderedTorsionClasses](declarations/strictlyorderedtorsionclasses.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [nonAdmissibleForcedIntoRingAlgebra](declarations/nonadmissibleforcedintoringalgebra.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [AdmissibleEllipticCurveWithTorsion](declarations/admissibleellipticcurvewithtorsion.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [torsionCurveSurface](declarations/torsioncurvesurface.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [torsionMordellWeilSurface](declarations/torsionmordellweilsurface.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [positiveTorsionClass](declarations/positivetorsionclass.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [negativeTorsionClass](declarations/negativetorsionclass.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [zeroTorsionClass](declarations/zerotorsionclass.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [nonAdmissibleTorsionClass](declarations/nonadmissibletorsionclass.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [orderedTorsionClasses](declarations/orderedtorsionclasses.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [torsionCurveWithOrderedClasses](declarations/torsioncurvewithorderedclasses.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [TorsionRingAlgebraProgression](declarations/torsionringalgebraprogression-source-edition-2.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [torsionRingAlgebraProgression](declarations/torsionringalgebraprogression.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [defaultTorsionRingAlgebraProgression](declarations/defaulttorsionringalgebraprogression.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [nonAdmissibleTorsionProgression](declarations/nonadmissibletorsionprogression.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [torsion_classes_are_naturally_ordered](declarations/torsion-classes-are-naturally-ordered.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [phi_torsion_positive_maps_to_positive_progression](declarations/phi-torsion-positive-maps-to-positive-progression.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [phi_torsion_negative_maps_to_negative_progression](declarations/phi-torsion-negative-maps-to-negative-progression.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [phi_torsion_zero_maps_to_refusal_residue](declarations/phi-torsion-zero-maps-to-refusal-residue.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nonadmissible_torsion_emits_residue](declarations/nonadmissible-torsion-emits-residue.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ring_algebra_progresses_by_signed_eml_polarity](declarations/ring-algebra-progresses-by-signed-eml-polarity.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [nonadmissible_torsion_not_forced_into_ring_algebra](declarations/nonadmissible-torsion-not-forced-into-ring-algebra.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [torsion_scattering_has_no_theorem_authority](declarations/torsion-scattering-has-no-theorem-authority.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a28cb6edd07199d384ccd46560b9243dc578eb9c365fb849fb0cf7bf95d7938c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
