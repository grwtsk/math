# Cyclic Cubical Bit Field

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de0c1b052e0bf9d9d5572d55fd6ec74c0a471ad2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/CyclicCubicalBitField.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitField](declarations/bitfield.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [FaceAddress](declarations/faceaddress.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [freeCoordinates](declarations/freecoordinates.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [dimension](declarations/dimension.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IsSubface](declarations/issubface.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IsFacet](declarations/isfacet.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Incident](declarations/incident.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [CubicalFace](declarations/cubicalface.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [faceCount](declarations/facecount.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [FaceEncoding](declarations/faceencoding.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [faceEncodingEquiv](declarations/faceencodingequiv.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [card_free_coordinate_sets](declarations/card-free-coordinate-sets.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [card_fixed_assignments](declarations/card-fixed-assignments.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [card_faces_eq_faceCount](declarations/card-faces-eq-facecount.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_faceCount_eq_three_pow](declarations/sum-facecount-eq-three-pow.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [cyclicCoordinateEquiv](declarations/cycliccoordinateequiv.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cyclicCoordinateEquiv_zero](declarations/cycliccoordinateequiv-zero.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cyclicCoordinateEquiv_symm_zero](declarations/cycliccoordinateequiv-symm-zero.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cyclicCoordinateEquiv_symm](declarations/cycliccoordinateequiv-symm.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cyclicCoordinateEquiv_add](declarations/cycliccoordinateequiv-add.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rotateBitField](declarations/rotatebitfield.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [rotateFace](declarations/rotateface.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rotateBitField_zero](declarations/rotatebitfield-zero.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rotateFace_zero](declarations/rotateface-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rotateBitField_add](declarations/rotatebitfield-add.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rotateFace_add](declarations/rotateface-add.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rotateBitField_neg_rotateBitField](declarations/rotatebitfield-neg-rotatebitfield.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rotateFace_neg_rotateFace](declarations/rotateface-neg-rotateface.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rotateFace_dimension](declarations/rotateface-dimension.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rotateFace_inclusion](declarations/rotateface-inclusion.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rotateFace_boundaryRelation](declarations/rotateface-boundaryrelation.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rotateFace_incidence](declarations/rotateface-incidence.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rotateFace_commonIncidence](declarations/rotateface-commonincidence.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [CubicalChain](declarations/cubicalchain.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [rotate_chainMap](declarations/rotate-chainmap.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [cubicalBoundary](declarations/cubicalboundary.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [boundary_rotate](declarations/boundary-rotate.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [rotationEquivalent](declarations/rotationequivalent.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [toy1010](declarations/toy1010.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toy0101](declarations/toy0101.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toy_1010_rotates_to_0101](declarations/toy-1010-rotates-to-0101.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [rotationOrbitCount](declarations/rotationorbitcount.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [rotationKFaceOrbitCount](declarations/rotationkfaceorbitcount.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [rotationKFaceOrbitCount_burnside](declarations/rotationkfaceorbitcount-burnside.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e78d7e699a5e8b3ee6da950ff65047ed48c4b2fcd21bad384ddb9f4b85ff8df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
