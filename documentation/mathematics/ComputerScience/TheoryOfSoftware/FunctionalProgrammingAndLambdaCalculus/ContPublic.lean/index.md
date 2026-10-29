# Cont Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant590569383f4471b44a2cbdc834c96e160494757997a2705fb6787624a113bd8d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6409d9bddc089612fb1f4d436d946ba216d3f28`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MonadCont.Label](declarations/monadcont-label.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [MonadCont.goto](declarations/monadcont-goto.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [MonadCont](declarations/monadcont.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [LawfulMonadCont](declarations/lawfulmonadcont.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ContT](declarations/contt.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Cont](declarations/cont.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mk](declarations/mk.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [run](declarations/run.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [map](declarations/map.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [run_contT_map_contT](declarations/run-contt-map-contt.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [withContT](declarations/withcontt.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [run_withContT](declarations/run-withcontt.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ext](declarations/ext.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [run_mk](declarations/run-mk.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [run_pure](declarations/run-pure.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [run_bind](declarations/run-bind.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [run_map](declarations/run-map.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [run_seq](declarations/run-seq.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [run_seqLeft](declarations/run-seqleft.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [run_seqRight](declarations/run-seqright.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [run_monadLift](declarations/run-monadlift.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monadLift_bind](declarations/monadlift-bind.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [run_callCC](declarations/run-callcc.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [run_throw](declarations/run-throw.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [run_tryCatch](declarations/run-trycatch.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ExceptT.mkLabel](declarations/exceptt-mklabel.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ExceptT.goto_mkLabel](declarations/exceptt-goto-mklabel.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [ExceptT.callCC](declarations/exceptt-callcc.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [OptionT.mkLabel](declarations/optiont-mklabel.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [OptionT.goto_mkLabel](declarations/optiont-goto-mklabel.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [OptionT.callCC](declarations/optiont-callcc.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [run_callCC](declarations/run-callcc-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [WriterT.mkLabel](declarations/writert-mklabel.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [WriterT.mkLabel'](declarations/writert-mklabel-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [WriterT.goto_mkLabel](declarations/writert-goto-mklabel.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [WriterT.goto_mkLabel'](declarations/writert-goto-mklabel-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [WriterT.callCC](declarations/writert-callcc-source-edition-2.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [WriterT.callCC'](declarations/writert-callcc.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [StateT.mkLabel](declarations/statet-mklabel.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [StateT.goto_mkLabel](declarations/statet-goto-mklabel.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [StateT.callCC](declarations/statet-callcc.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [ReaderT.mkLabel](declarations/readert-mklabel.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ReaderT.goto_mkLabel](declarations/readert-goto-mklabel.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [ReaderT.callCC](declarations/readert-callcc.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [ContT.equiv](declarations/contt-equiv.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=caa3ab0a760db010db7fdd8388582b3925dc444f6c721319a50ddc9ebc11ec5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant590569383f4471b44a2cbdc834c96e160494757997a2705fb6787624a113bd8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
