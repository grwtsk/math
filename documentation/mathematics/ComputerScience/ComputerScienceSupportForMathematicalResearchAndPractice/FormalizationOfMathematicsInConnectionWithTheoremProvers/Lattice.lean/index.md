# Lattice

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf653d70367b2124df95ef105a4e074ffb09196b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Lattice.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Slice](declarations/slice.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [endExclusive](declarations/endexclusive.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [containsNat](declarations/containsnat.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [containsFin](declarations/containsfin.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [containsFin_iff_containsNat](declarations/containsfin-iff-containsnat.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [le](declarations/le.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_refl](declarations/le-refl.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_trans](declarations/le-trans.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundsLe](declarations/boundsle.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boundsLe_implies_le](declarations/boundsle-implies-le.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [start_le_length](declarations/start-le-length.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [endExclusive_le_length](declarations/endexclusive-le-length.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [intersectStart](declarations/intersectstart.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [intersectEnd](declarations/intersectend.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [intersect](declarations/intersect.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [containsNat_intersect](declarations/containsnat-intersect.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [intersect_le_left](declarations/intersect-le-left.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [intersect_le_right](declarations/intersect-le-right.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [hullStart](declarations/hullstart.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [hullEnd](declarations/hullend.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hullStart_le_hullEnd](declarations/hullstart-le-hullend.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [hull](declarations/hull.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [containsNat_hull_left](declarations/containsnat-hull-left.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [containsNat_hull_right](declarations/containsnat-hull-right.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [le_hull_left](declarations/le-hull-left.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_hull_right](declarations/le-hull-right.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [hasGap](declarations/hasgap.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [decidableHasGap](declarations/decidablehasgap.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [UnionGapResidue](declarations/uniongapresidue.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [containsNat_zero_len_false](declarations/containsnat-zero-len-false.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [containsNat_hull_no_gap](declarations/containsnat-hull-no-gap.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [compatibleUnion?](declarations/compatibleunion.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compatibleUnion?_sound](declarations/compatibleunion-sound.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [compatibleUnion?_none_gap](declarations/compatibleunion-none-gap.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3daf0bdb27dad8a31241c0d10dd7807c4e7f7b90f776172e54a460b9126031a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
