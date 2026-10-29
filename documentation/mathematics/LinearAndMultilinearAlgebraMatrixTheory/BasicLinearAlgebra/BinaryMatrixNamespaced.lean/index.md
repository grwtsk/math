# Binary Matrix Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14f7a5c588fc075abff3274bbbb006c5020563ff`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryMatrixNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BinMat](declarations/binmat.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [map](declarations/map.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [zipWith](declarations/zipwith.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [and](declarations/and.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [or](declarations/or.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [xor](declarations/xor.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [not](declarations/not.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_apply](declarations/map-apply.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zipWith_apply](declarations/zipwith-apply.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [and_apply](declarations/and-apply.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [or_apply](declarations/or-apply.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [xor_apply](declarations/xor-apply.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_apply](declarations/not-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ext](declarations/ext.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [and_comm](declarations/and-comm.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [and_assoc](declarations/and-assoc.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [or_comm](declarations/or-comm.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [xor_comm](declarations/xor-comm.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [not_not](declarations/not-not.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [BinMatMut](declarations/binmatmut.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [flatIdx](declarations/flatidx.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ofArray?](declarations/ofarray.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [fill](declarations/fill.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [get](declarations/get.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toDecl](declarations/todecl.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mapInPlace](declarations/mapinplace.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [zipWithInPlace](declarations/zipwithinplace.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [andInPlace](declarations/andinplace.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [orInPlace](declarations/orinplace.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [xorInPlace](declarations/xorinplace.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [notInPlace](declarations/notinplace.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [get_mapInPlace](declarations/get-mapinplace.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [get_zipWithInPlace](declarations/get-zipwithinplace.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapInPlace_spec](declarations/mapinplace-spec.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [zipWithInPlace_spec](declarations/zipwithinplace-spec.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [andInPlace_spec](declarations/andinplace-spec.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orInPlace_spec](declarations/orinplace-spec.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [xorInPlace_spec](declarations/xorinplace-spec.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [notInPlace_spec](declarations/notinplace-spec.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Refines](declarations/refines.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [refines_toDecl](declarations/refines-todecl.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mapInPlace_refines](declarations/mapinplace-refines.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [zipWithInPlace_refines](declarations/zipwithinplace-refines.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [andInPlace_refines](declarations/andinplace-refines.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [andInPlace_comm_toDecl](declarations/andinplace-comm-todecl.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [andInPlace_assoc_toDecl](declarations/andinplace-assoc-todecl.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [notInPlace_involutive_toDecl](declarations/notinplace-involutive-todecl.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2547826973f89befeece49910c838c5e2cce8dd1e1da99c9d02e2b5a7a1d69e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
