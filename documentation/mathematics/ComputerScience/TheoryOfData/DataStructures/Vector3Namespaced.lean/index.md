# Vector3 Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `820cddae33b51bb6a43f0e8d1dcc561776d9a272`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/Vector3Namespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Vector3](declarations/vector3.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [nil](declarations/nil.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cons](declarations/cons.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [unexpandNil](declarations/unexpandnil.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [unexpandCons](declarations/unexpandcons.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cons_fz](declarations/cons-fz.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [cons_fs](declarations/cons-fs.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [nth](declarations/nth.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [ofFn](declarations/offn.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [head](declarations/head.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tail](declarations/tail.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eq_nil](declarations/eq-nil.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [nilElim](declarations/nilelim.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [consElim](declarations/conselim.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [consElim_cons](declarations/conselim-cons.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [recOn](declarations/recon.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [recOn_nil](declarations/recon-nil.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [recOn_cons](declarations/recon-cons.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [append](declarations/append.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [append_nil](declarations/append-nil.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [append_cons](declarations/append-cons.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [append_left](declarations/append-left.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [append_add](declarations/append-add.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [insert](declarations/insert.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [insert_fz](declarations/insert-fz.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [insert_fs](declarations/insert-fs.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [append_insert](declarations/append-insert.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [VectorEx](declarations/vectorex.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [VectorAll](declarations/vectorall.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_vector_zero](declarations/exists-vector-zero.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_vector_succ](declarations/exists-vector-succ.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [vectorEx_iff_exists](declarations/vectorex-iff-exists.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [vectorAll_iff_forall](declarations/vectorall-iff-forall.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [VectorAllP](declarations/vectorallp.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [vectorAllP_nil](declarations/vectorallp-nil.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [vectorAllP_singleton](declarations/vectorallp-singleton.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [vectorAllP_cons](declarations/vectorallp-cons.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [vectorAllP_iff_forall](declarations/vectorallp-iff-forall.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [VectorAllP.imp](declarations/vectorallp-imp.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edff0851e00d94d3db5c51257bebd9b13cea8f0809cfc5b89ac8aaec6d140179 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
