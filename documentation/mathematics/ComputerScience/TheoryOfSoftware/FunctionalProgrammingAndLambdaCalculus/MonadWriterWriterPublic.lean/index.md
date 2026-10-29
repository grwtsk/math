# Monad Writer Writer Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `622bee67fc87b1c0e317b56861161c0ce81f045e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadWriterWriterPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [WriterT](declarations/writert.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Writer](declarations/writer.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [MonadWriter](declarations/monadwriter.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mk](declarations/mk.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [run](declarations/run.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [runThe](declarations/runthe.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [run_mk](declarations/run-mk.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [monad](declarations/monad.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [run_pure](declarations/run-pure.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [run_map](declarations/run-map.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [run_bind](declarations/run-bind.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [liftTell](declarations/lifttell.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [run_liftM](declarations/run-liftm.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [run_tell](declarations/run-tell.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [run_listen](declarations/run-listen.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [run_pass](declarations/run-pass.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [run_throw](declarations/run-throw.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [run_tryCatch](declarations/run-trycatch.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [adapt](declarations/adapt.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `class` | [MonadWriterAdapter](declarations/monadwriteradapter.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [WriterT.equiv](declarations/writert-equiv.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6be67cb62e075c2299ed5389312accf576a22984997d9684b13df8463cfbbca0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Writer/Variant372b892f960a0c80fd16804ca0b8c2ef1b53ce1485eedfbb57441eaee98ce87b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
