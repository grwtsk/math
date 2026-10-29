# Cyclic Cubical Namespaced Bit Field

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9e9663752fb975d94dcbacc1337f116969d8561`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/CyclicCubicalNamespacedBitField.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitField](declarations/bitfield.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [FaceAddress](declarations/faceaddress.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [freeCoordinates](declarations/freecoordinates.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [dimension](declarations/dimension.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IsSubface](declarations/issubface.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IsFacet](declarations/isfacet.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Incident](declarations/incident.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [CubicalFace](declarations/cubicalface.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [faceCount](declarations/facecount.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [FaceEncoding](declarations/faceencoding.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [faceEncodingEquiv](declarations/faceencodingequiv.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [card_free_coordinate_sets](declarations/card-free-coordinate-sets.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [card_fixed_assignments](declarations/card-fixed-assignments.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [card_faces_eq_faceCount](declarations/card-faces-eq-facecount.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_faceCount_eq_three_pow](declarations/sum-facecount-eq-three-pow.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [cyclicCoordinateEquiv](declarations/cycliccoordinateequiv.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cyclicCoordinateEquiv_zero](declarations/cycliccoordinateequiv-zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cyclicCoordinateEquiv_symm_zero](declarations/cycliccoordinateequiv-symm-zero.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cyclicCoordinateEquiv_symm](declarations/cycliccoordinateequiv-symm.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cyclicCoordinateEquiv_add](declarations/cycliccoordinateequiv-add.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rotateBitField](declarations/rotatebitfield.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [rotateFace](declarations/rotateface.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rotateBitField_zero](declarations/rotatebitfield-zero.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rotateFace_zero](declarations/rotateface-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rotateBitField_add](declarations/rotatebitfield-add.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rotateFace_add](declarations/rotateface-add.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rotateBitField_neg_rotateBitField](declarations/rotatebitfield-neg-rotatebitfield.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rotateFace_neg_rotateFace](declarations/rotateface-neg-rotateface.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rotateFace_dimension](declarations/rotateface-dimension.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rotateFace_inclusion](declarations/rotateface-inclusion.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rotateFace_boundaryRelation](declarations/rotateface-boundaryrelation.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rotateFace_incidence](declarations/rotateface-incidence.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rotateFace_commonIncidence](declarations/rotateface-commonincidence.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [CubicalChain](declarations/cubicalchain.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [rotate_chainMap](declarations/rotate-chainmap.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [cubicalBoundary](declarations/cubicalboundary.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [boundary_rotate](declarations/boundary-rotate.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [rotationEquivalent](declarations/rotationequivalent.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [toy1010](declarations/toy1010.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toy0101](declarations/toy0101.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toy_1010_rotates_to_0101](declarations/toy-1010-rotates-to-0101.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [rotationOrbitCount](declarations/rotationorbitcount.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [rotationKFaceOrbitCount](declarations/rotationkfaceorbitcount.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [rotationKFaceOrbitCount_burnside](declarations/rotationkfaceorbitcount-burnside.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c5b407ea72103f3ed5cc63cbe90c8111c47b9dd7dc9b4364051c867e29f4b59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
