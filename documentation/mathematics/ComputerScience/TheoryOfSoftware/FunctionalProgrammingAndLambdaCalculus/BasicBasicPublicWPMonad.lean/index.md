# Basic Basic Public WPMonad

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1dedb257778bb87b45c68c8d17aa6fdd3558336`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicWPMonad.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [WP](declarations/wp.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WP.wp](declarations/wp-wp.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [WPMonad](declarations/wpmonad.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [WP.wpTrans_apply_eq](declarations/wp-wptrans-apply-eq.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [wp_consequence](declarations/wp-consequence.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wp_consequence_econs](declarations/wp-consequence-econs.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [wp_econs](declarations/wp-econs.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [wp_econs_bot](declarations/wp-econs-bot.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [wp_consequence_le](declarations/wp-consequence-le.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [wp_econs_le](declarations/wp-econs-le.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [wp_econs_bot_le](declarations/wp-econs-bot-le.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [wp_le_wp_of_eq](declarations/wp-le-wp-of-eq.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_le_wp_map](declarations/map-le-wp-map.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_le_wp_map'](declarations/map-le-wp-map-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [seq_le_wp_seq](declarations/seq-le-wp-seq.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Id.wpInst](declarations/id-wpinst.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [Id.instWPMonad](declarations/id-instwpmonad.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [PredTrans.apply_pushExcept](declarations/predtrans-apply-pushexcept.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ExceptT.wpInst](declarations/exceptt-wpinst.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [ExceptT.instWPMonad](declarations/exceptt-instwpmonad.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ExceptT.wp_apply_eq](declarations/exceptt-wp-apply-eq.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [OptionT.wpInst](declarations/optiont-wpinst.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [OptionT.instWPMonad](declarations/optiont-instwpmonad.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [OptionT.wp_apply_eq](declarations/optiont-wp-apply-eq.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [StateT.wpInst](declarations/statet-wpinst.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [StateT.wp_apply_eq](declarations/statet-wp-apply-eq.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ReaderT.wpInst](declarations/readert-wpinst.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [ReaderT.instWPMonad](declarations/readert-instwpmonad.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ReaderT.wp_apply_eq](declarations/readert-wp-apply-eq.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Option.wpInst](declarations/option-wpinst.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [Option.instWPMonad](declarations/option-instwpmonad.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Except.wpInst](declarations/except-wpinst.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [Except.instWPMonad](declarations/except-instwpmonad.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [EStateM.wpInst](declarations/estatem-wpinst.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [EStateM.instWPMonad](declarations/estatem-instwpmonad.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Id.of_wp_run_eq](declarations/id-of-wp-run-eq.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Option.of_wp_eq](declarations/option-of-wp-eq.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [StateM.of_wp_run_eq](declarations/statem-of-wp-run-eq-source-edition-2.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [StateM.of_wp_run'_eq](declarations/statem-of-wp-run-eq.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ReaderM.of_wp_run_eq](declarations/readerm-of-wp-run-eq.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Except.of_wp_eq](declarations/except-of-wp-eq.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [EStateM.of_wp_run_eq](declarations/estatem-of-wp-run-eq.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a49176971d2081f453189c547419b24bedcccd64cf4a7b18b0e1624d190476d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
