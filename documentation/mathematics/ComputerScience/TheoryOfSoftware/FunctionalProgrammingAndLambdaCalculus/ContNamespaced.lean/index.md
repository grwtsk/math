# Cont Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cd59f4dfad992ef183b27780fedf3d0c643f0b8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MonadCont.Label](declarations/monadcont-label.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [MonadCont.goto](declarations/monadcont-goto.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [MonadCont](declarations/monadcont.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [LawfulMonadCont](declarations/lawfulmonadcont.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ContT](declarations/contt.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Cont](declarations/cont.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [run](declarations/run.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [map](declarations/map.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [run_contT_map_contT](declarations/run-contt-map-contt.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [withContT](declarations/withcontt.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [run_withContT](declarations/run-withcontt.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext](declarations/ext.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [monadLift](declarations/monadlift.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [monadLift_bind](declarations/monadlift-bind.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ExceptT.mkLabel](declarations/exceptt-mklabel.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ExceptT.goto_mkLabel](declarations/exceptt-goto-mklabel.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ExceptT.callCC](declarations/exceptt-callcc.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [OptionT.mkLabel](declarations/optiont-mklabel.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [OptionT.goto_mkLabel](declarations/optiont-goto-mklabel.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [OptionT.callCC](declarations/optiont-callcc.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [run_callCC](declarations/run-callcc.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [WriterT.mkLabel](declarations/writert-mklabel.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [WriterT.mkLabel'](declarations/writert-mklabel-source-edition-2.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [WriterT.goto_mkLabel](declarations/writert-goto-mklabel-source-edition-2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [WriterT.goto_mkLabel'](declarations/writert-goto-mklabel.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [WriterT.callCC](declarations/writert-callcc.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [WriterT.callCC'](declarations/writert-callcc-source-edition-2.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [StateT.mkLabel](declarations/statet-mklabel.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [StateT.goto_mkLabel](declarations/statet-goto-mklabel.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [StateT.callCC](declarations/statet-callcc.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [ReaderT.mkLabel](declarations/readert-mklabel.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ReaderT.goto_mkLabel](declarations/readert-goto-mklabel.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [ReaderT.callCC](declarations/readert-callcc.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [ContT.equiv](declarations/contt-equiv.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afd43dc91ebbe5af6bb6b05cf7ea7766a9bf31d5a18f4450e49caef1c573041e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
