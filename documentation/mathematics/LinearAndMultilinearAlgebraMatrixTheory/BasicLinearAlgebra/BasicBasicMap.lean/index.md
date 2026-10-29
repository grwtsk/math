# Basic Basic Map

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03355acf82bc6a8f39d2e5b8832d7f15ac1b8fc6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasicBasicMap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitMatrix](declarations/bitmatrix.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [map](declarations/map.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [zipWith](declarations/zipwith.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [and](declarations/and.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [or](declarations/or.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [xor](declarations/xor.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [not](declarations/not.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_apply](declarations/map-apply.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zipWith_apply](declarations/zipwith-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [and_apply](declarations/and-apply.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [or_apply](declarations/or-apply.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [xor_apply](declarations/xor-apply.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_apply](declarations/not-apply.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ext](declarations/ext.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [and_comm](declarations/and-comm.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [and_assoc](declarations/and-assoc.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [or_comm](declarations/or-comm.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [xor_comm](declarations/xor-comm.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [not_not](declarations/not-not.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [BitMatrix.ArrayBacked](declarations/bitmatrix-arraybacked.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [flatIdx](declarations/flatidx.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ofArray?](declarations/ofarray.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [fill](declarations/fill.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [get](declarations/get.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toMatrix](declarations/tomatrix.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mapInPlace](declarations/mapinplace.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [zipWithInPlace](declarations/zipwithinplace.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [andInPlace](declarations/andinplace.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [orInPlace](declarations/orinplace.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [xorInPlace](declarations/xorinplace.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [notInPlace](declarations/notinplace.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [get_mapInPlace](declarations/get-mapinplace.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [get_zipWithInPlace](declarations/get-zipwithinplace.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapInPlace_spec](declarations/mapinplace-spec.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [zipWithInPlace_spec](declarations/zipwithinplace-spec.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [andInPlace_spec](declarations/andinplace-spec.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orInPlace_spec](declarations/orinplace-spec.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [xorInPlace_spec](declarations/xorinplace-spec.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [notInPlace_spec](declarations/notinplace-spec.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Refines](declarations/refines.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [refines_toMatrix](declarations/refines-tomatrix.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mapInPlace_refines](declarations/mapinplace-refines.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [zipWithInPlace_refines](declarations/zipwithinplace-refines.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [andInPlace_refines](declarations/andinplace-refines.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [andInPlace_comm_toMatrix](declarations/andinplace-comm-tomatrix.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [andInPlace_assoc_toMatrix](declarations/andinplace-assoc-tomatrix.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [notInPlace_involutive_toMatrix](declarations/notinplace-involutive-tomatrix.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f8be66043eeb395d8b6b84b9689dcd782d5aea3605af1289eea650ba3c816dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
