# Symmetric Heisenberg Coordinates And Changed Sections

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variante73962e35df03dbfcdd0afdbc676668c330a12a78283d237fac7b3f0196a8d45.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4460df2cb670482d37735e59964a41e9dbd8ed7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vector](declarations/vector.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [determinant](declarations/determinant.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [beta](declarations/beta.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [beta_cocycle](declarations/beta-cocycle.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [beta_antisymmetric](declarations/beta-antisymmetric.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Element](declarations/element.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [multiply](declarations/multiply.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [identity](declarations/identity.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [inverse](declarations/inverse.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_base](declarations/mul-base.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mul_center](declarations/mul-center.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inv_base](declarations/inv-base.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [inv_center](declarations/inv-center.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [matrix](declarations/matrix.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [matrix_multiply](declarations/matrix-multiply.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [matrix_injective](declarations/matrix-injective.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [matrix_one](declarations/matrix-one.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [matrixUnit](declarations/matrixunit.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [matrixHom](declarations/matrixhom.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [central](declarations/central.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [firstAxis](declarations/firstaxis.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [secondAxis](declarations/secondaxis.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [matrixHom_firstAxis](declarations/matrixhom-firstaxis.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [matrixHom_secondAxis](declarations/matrixhom-secondaxis.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [matrix_central](declarations/matrix-central.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [commutator](declarations/commutator.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [matrix_commutator](declarations/matrix-commutator.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [betaChanged](declarations/betachanged.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [betaChanged_cocycle](declarations/betachanged-cocycle.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [betaChanged_commutator](declarations/betachanged-commutator.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [changedMultiply](declarations/changedmultiply.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [changedInverse](declarations/changedinverse.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [changedMultiply_assoc](declarations/changedmultiply-assoc.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [sectionEquiv](declarations/sectionequiv.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sectionEquiv_multiply](declarations/sectionequiv-multiply.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sectionEquiv_identity](declarations/sectionequiv-identity.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sectionEquiv_inverse](declarations/sectionequiv-inverse.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [changedGroup](declarations/changedgroup.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [changedGroup_multiply](declarations/changedgroup-multiply.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [changedGroup_identity](declarations/changedgroup-identity.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [changedGroup_inverse](declarations/changedgroup-inverse.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [sectionMulEquiv](declarations/sectionmulequiv.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sectionEquiv_central](declarations/sectionequiv-central.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [changedCommutator](declarations/changedcommutator.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [changedCommutator_eq_central](declarations/changedcommutator-eq-central.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [changedMatrix](declarations/changedmatrix.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [changedMatrix_multiply](declarations/changedmatrix-multiply.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [changedMatrix_commutator](declarations/changedmatrix-commutator.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [centralCharacter_section](declarations/centralcharacter-section.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [changed_tally_commutator_phase](declarations/changed-tally-commutator-phase.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e97502b75c79abb625ec2f7eae98f4c6163658dbd44ba9f5f55b505bb5c0417 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variante73962e35df03dbfcdd0afdbc676668c330a12a78283d237fac7b3f0196a8d45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
