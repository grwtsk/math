# Monad Writer Writer Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e19222af613ef51d623a6b4f52618034e91190d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadWriterWriterNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [WriterT](declarations/writert.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Writer](declarations/writer.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [MonadWriter](declarations/monadwriter.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mk](declarations/mk.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [run](declarations/run.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [runThe](declarations/runthe.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [run_mk](declarations/run-mk.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [monad](declarations/monad.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [run_pure](declarations/run-pure.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [run_map](declarations/run-map.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [run_bind](declarations/run-bind.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [liftTell](declarations/lifttell.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [run_liftM](declarations/run-liftm.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [run_tell](declarations/run-tell.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [run_listen](declarations/run-listen.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [run_pass](declarations/run-pass.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [run_throw](declarations/run-throw.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [run_tryCatch](declarations/run-trycatch.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [adapt](declarations/adapt.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `class` | [MonadWriterAdapter](declarations/monadwriteradapter.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [WriterT.equiv](declarations/writert-equiv.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad6382cf43999c957c21619f10ddba73d526ceecea23afe9d74725c4bf29005d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variantf728f24bb4f89337f146bdecc738c79eb3ea93b88fe7a4f7c46e20166053810f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
