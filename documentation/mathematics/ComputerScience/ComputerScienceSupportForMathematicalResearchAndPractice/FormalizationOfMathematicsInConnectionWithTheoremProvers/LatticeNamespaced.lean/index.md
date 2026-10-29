# Lattice Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a02de2374f8e63656a3bdb9403e999c9fcc2f204`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LatticeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Slice](declarations/slice.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [endExclusive](declarations/endexclusive.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [containsNat](declarations/containsnat.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [containsFin](declarations/containsfin.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [containsFin_iff_containsNat](declarations/containsfin-iff-containsnat.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [le](declarations/le.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_refl](declarations/le-refl.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_trans](declarations/le-trans.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundsLe](declarations/boundsle.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boundsLe_implies_le](declarations/boundsle-implies-le.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [start_le_length](declarations/start-le-length.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [endExclusive_le_length](declarations/endexclusive-le-length.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [intersectStart](declarations/intersectstart.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [intersectEnd](declarations/intersectend.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [intersect](declarations/intersect.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [containsNat_intersect](declarations/containsnat-intersect.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [intersect_le_left](declarations/intersect-le-left.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [intersect_le_right](declarations/intersect-le-right.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [hullStart](declarations/hullstart.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [hullEnd](declarations/hullend.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hullStart_le_hullEnd](declarations/hullstart-le-hullend.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [hull](declarations/hull.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [containsNat_hull_left](declarations/containsnat-hull-left.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [containsNat_hull_right](declarations/containsnat-hull-right.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [le_hull_left](declarations/le-hull-left.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_hull_right](declarations/le-hull-right.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [hasGap](declarations/hasgap.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [decidableHasGap](declarations/decidablehasgap.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [UnionGapResidue](declarations/uniongapresidue.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [containsNat_zero_len_false](declarations/containsnat-zero-len-false.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [containsNat_hull_no_gap](declarations/containsnat-hull-no-gap.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [compatibleUnion?](declarations/compatibleunion.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compatibleUnion?_sound](declarations/compatibleunion-sound.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [compatibleUnion?_none_gap](declarations/compatibleunion-none-gap.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15f24b64c82cc67940cd3b5ab112eddc1b20b09962acd3a66eef5a67f269798f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
