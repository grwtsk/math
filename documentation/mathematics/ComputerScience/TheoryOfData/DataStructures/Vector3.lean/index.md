# Vector3

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variantb275751164d4d931a3b0503ef4e740a0653d10516e0df15348f8c5b773a29e74.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5ae4a826f2b2087879e2b285ed7d9e3e5af237b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/Vector3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Vector3](declarations/vector3.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [nil](declarations/nil.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cons](declarations/cons.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [unexpandNil](declarations/unexpandnil.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [unexpandCons](declarations/unexpandcons.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cons_fz](declarations/cons-fz.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [cons_fs](declarations/cons-fs.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [nth](declarations/nth.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [ofFn](declarations/offn.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [head](declarations/head.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tail](declarations/tail.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eq_nil](declarations/eq-nil.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [nilElim](declarations/nilelim.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [consElim](declarations/conselim.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [consElim_cons](declarations/conselim-cons.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [recOn](declarations/recon.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [recOn_nil](declarations/recon-nil.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [recOn_cons](declarations/recon-cons.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [append](declarations/append.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [append_nil](declarations/append-nil.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [append_cons](declarations/append-cons.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [append_left](declarations/append-left.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [append_add](declarations/append-add.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [insert](declarations/insert.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [insert_fz](declarations/insert-fz.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [insert_fs](declarations/insert-fs.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [append_insert](declarations/append-insert.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [VectorEx](declarations/vectorex.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [VectorAll](declarations/vectorall.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_vector_zero](declarations/exists-vector-zero.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_vector_succ](declarations/exists-vector-succ.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [vectorEx_iff_exists](declarations/vectorex-iff-exists.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [vectorAll_iff_forall](declarations/vectorall-iff-forall.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [VectorAllP](declarations/vectorallp.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [vectorAllP_nil](declarations/vectorallp-nil.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [vectorAllP_singleton](declarations/vectorallp-singleton.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [vectorAllP_cons](declarations/vectorallp-cons.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [vectorAllP_iff_forall](declarations/vectorallp-iff-forall.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [VectorAllP.imp](declarations/vectorallp-imp.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d842941ec8048c3bd29bd5e0d10cccdd0c6907e8ab07cf29e0b7f789f9133a4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variantb275751164d4d931a3b0503ef4e740a0653d10516e0df15348f8c5b773a29e74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
