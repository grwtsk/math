# Basic Basic Namespaced Public WPMonad

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d26428deffc3eaf0ce2ce9ddcc383dd1b0a51f51`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [WP](declarations/wp.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WP.wp](declarations/wp-wp.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [WPMonad](declarations/wpmonad.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [WP.wpTrans_apply_eq](declarations/wp-wptrans-apply-eq.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [wp_consequence](declarations/wp-consequence.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wp_consequence_econs](declarations/wp-consequence-econs.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [wp_econs](declarations/wp-econs.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [wp_econs_bot](declarations/wp-econs-bot.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [wp_consequence_le](declarations/wp-consequence-le.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [wp_econs_le](declarations/wp-econs-le.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [wp_econs_bot_le](declarations/wp-econs-bot-le.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [wp_le_wp_of_eq](declarations/wp-le-wp-of-eq.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_le_wp_map](declarations/map-le-wp-map-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_le_wp_map'](declarations/map-le-wp-map.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [seq_le_wp_seq](declarations/seq-le-wp-seq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Id.wpInst](declarations/id-wpinst.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [Id.instWPMonad](declarations/id-instwpmonad.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [PredTrans.apply_pushExcept](declarations/predtrans-apply-pushexcept.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ExceptT.wpInst](declarations/exceptt-wpinst.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [ExceptT.instWPMonad](declarations/exceptt-instwpmonad.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ExceptT.wp_apply_eq](declarations/exceptt-wp-apply-eq.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [OptionT.wpInst](declarations/optiont-wpinst.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [OptionT.instWPMonad](declarations/optiont-instwpmonad.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [OptionT.wp_apply_eq](declarations/optiont-wp-apply-eq.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [StateT.wpInst](declarations/statet-wpinst.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [StateT.wp_apply_eq](declarations/statet-wp-apply-eq.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ReaderT.wpInst](declarations/readert-wpinst.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [ReaderT.instWPMonad](declarations/readert-instwpmonad.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ReaderT.wp_apply_eq](declarations/readert-wp-apply-eq.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Option.wpInst](declarations/option-wpinst.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [Option.instWPMonad](declarations/option-instwpmonad.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Except.wpInst](declarations/except-wpinst.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [Except.instWPMonad](declarations/except-instwpmonad.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [EStateM.wpInst](declarations/estatem-wpinst.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [EStateM.instWPMonad](declarations/estatem-instwpmonad.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Id.of_wp_run_eq](declarations/id-of-wp-run-eq.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Option.of_wp_eq](declarations/option-of-wp-eq.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [StateM.of_wp_run_eq](declarations/statem-of-wp-run-eq-source-edition-2.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [StateM.of_wp_run'_eq](declarations/statem-of-wp-run-eq.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ReaderM.of_wp_run_eq](declarations/readerm-of-wp-run-eq.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Except.of_wp_eq](declarations/except-of-wp-eq.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [EStateM.of_wp_run_eq](declarations/estatem-of-wp-run-eq.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=440c9429f85257171f59d2950acc2addbb2386b2dd408d5f20891d9892ebfd67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
