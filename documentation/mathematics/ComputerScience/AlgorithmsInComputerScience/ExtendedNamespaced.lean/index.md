# Extended Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3407862e03ef0fb006b96323c7e78f6fa603fa2e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ExtendedNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtendedInterval](declarations/extendedinterval.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [singleton](declarations/singleton.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [empty](declarations/empty.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [whole](declarations/whole.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [isEmpty](declarations/isempty.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [numParts](declarations/numparts.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [hull?](declarations/hull-source-edition-2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [hull](declarations/hull.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mem](declarations/mem.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_def](declarations/mem-def.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_singleton](declarations/mem-singleton.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [foldl_contains_head](declarations/foldl-contains-head.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [foldl_contains_tail](declarations/foldl-contains-tail.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_hull](declarations/mem-hull.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [defaultLargeBound](declarations/defaultlargebound.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [defaultLargeBound_pos](declarations/defaultlargebound-pos.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkSafeInterval](declarations/mksafeinterval.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_mkSafeInterval_of_le_le](declarations/mem-mksafeinterval-of-le-le.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [invExtended](declarations/invextended.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_invExtended](declarations/mem-invextended.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [liftUnary](declarations/liftunary.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_liftUnary](declarations/mem-liftunary.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [liftBinary](declarations/liftbinary.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_liftBinary](declarations/mem-liftbinary.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [ExtendedConfig](declarations/extendedconfig.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [ExtendedEnv](declarations/extendedenv.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [extendEnv](declarations/extendenv.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [evalExtended](declarations/evalextended.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [evalExtended1](declarations/evalextended1.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [evalExtendedHull](declarations/evalextendedhull.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [extendedEnvMem](declarations/extendedenvmem.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [evalDomainValidExtended](declarations/evaldomainvalidextended.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [evalDomainValidExtended_of_ExprSupported](declarations/evaldomainvalidextended-of-exprsupported.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [evalExtended_correct_core](declarations/evalextended-correct-core.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_evalExtendedHull_of_mem_evalExtended](declarations/mem-evalextendedhull-of-mem-evalextended.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1685c60d1c7a220cecb235a4e244fd12a35f207ad6f59532b9589bf7b697a10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
