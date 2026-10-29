# Heisenberg Cocycle

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31342111b6ab5d6376be16c6dde2f9fe4a371121`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vector](declarations/vector.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [determinant](declarations/determinant.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [beta](declarations/beta.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [beta_cocycle](declarations/beta-cocycle.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [beta_antisymmetric](declarations/beta-antisymmetric.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Element](declarations/element.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [multiply](declarations/multiply.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [identity](declarations/identity.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [inverse](declarations/inverse.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_base](declarations/mul-base.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mul_center](declarations/mul-center.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inv_base](declarations/inv-base.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [inv_center](declarations/inv-center.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [matrix](declarations/matrix.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [matrix_multiply](declarations/matrix-multiply.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [matrix_injective](declarations/matrix-injective.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [matrix_one](declarations/matrix-one.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [matrixUnit](declarations/matrixunit.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [matrixHom](declarations/matrixhom.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [central](declarations/central.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [firstAxis](declarations/firstaxis.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [secondAxis](declarations/secondaxis.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [matrixHom_firstAxis](declarations/matrixhom-firstaxis.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [matrixHom_secondAxis](declarations/matrixhom-secondaxis.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [matrix_central](declarations/matrix-central.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [commutator](declarations/commutator.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [matrix_commutator](declarations/matrix-commutator.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [betaChanged](declarations/betachanged.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [betaChanged_cocycle](declarations/betachanged-cocycle.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [betaChanged_commutator](declarations/betachanged-commutator.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [changedMultiply](declarations/changedmultiply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [changedInverse](declarations/changedinverse.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [changedMultiply_assoc](declarations/changedmultiply-assoc.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [sectionEquiv](declarations/sectionequiv.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sectionEquiv_multiply](declarations/sectionequiv-multiply.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sectionEquiv_identity](declarations/sectionequiv-identity.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sectionEquiv_inverse](declarations/sectionequiv-inverse.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [changedGroup](declarations/changedgroup.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [changedGroup_multiply](declarations/changedgroup-multiply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [changedGroup_identity](declarations/changedgroup-identity.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [changedGroup_inverse](declarations/changedgroup-inverse.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [sectionMulEquiv](declarations/sectionmulequiv.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sectionEquiv_central](declarations/sectionequiv-central.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [changedCommutator](declarations/changedcommutator.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [changedCommutator_eq_central](declarations/changedcommutator-eq-central.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [changedMatrix](declarations/changedmatrix.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [changedMatrix_multiply](declarations/changedmatrix-multiply.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [changedMatrix_commutator](declarations/changedmatrix-commutator.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [centralCharacter_section](declarations/centralcharacter-section.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [changed_tally_commutator_phase](declarations/changed-tally-commutator-phase.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6555b12ab430106aac99f9e690423d3e1cd7ba955e7c61c9565b880c26333f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
