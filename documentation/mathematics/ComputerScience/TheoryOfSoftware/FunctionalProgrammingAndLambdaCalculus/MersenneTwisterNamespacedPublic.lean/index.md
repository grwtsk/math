# Mersenne Twister Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**13 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5856f64226a6e6bea63addadf1eb5d33ab5dbba`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MersenneTwisterNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Config](declarations/config.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Config.uMask](declarations/config-umask.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Config.lMask](declarations/config-lmask.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Config.zero_lt_wordSize](declarations/config-zero-lt-wordsize.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Config.zero_lt_stateSize](declarations/config-zero-lt-statesize.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [State](declarations/state.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Config.init](declarations/config-init.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [State.twist](declarations/state-twist.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [State.update](declarations/state-update.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [State.next](declarations/state-next.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mt19937](declarations/mt19937.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mt19937_64](declarations/mt19937-64.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4564889233cbdd00a771b9fb7d49a1e86dcde09da6a12a7d84eeb58afa2d7919 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
