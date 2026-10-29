# Finite Dependency Closure Historical Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**20 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Order/Closure/FiniteDependencyClosure.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/FiniteDependencyClosureHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DependencyPath](declarations/dependencypath.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [trans](declarations/trans.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [dependencyStep](declarations/dependencystep.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_dependencyStep](declarations/mem-dependencystep.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [subset_dependencyStep](declarations/subset-dependencystep.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dependencyStep_mono](declarations/dependencystep-mono.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [affectedClosure](declarations/affectedclosure.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [DependencyClosed](declarations/dependencyclosed.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dependencyStep_eq_iff_closed](declarations/dependencystep-eq-iff-closed.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [seeds_subset_affectedClosure](declarations/seeds-subset-affectedclosure.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [affectedClosure_closed](declarations/affectedclosure-closed.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [affectedClosure_least](declarations/affectedclosure-least.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dependencyPath_mem_affectedClosure](declarations/dependencypath-mem-affectedclosure.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_affectedClosure_iff](declarations/mem-affectedclosure-iff.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [affectedClosure_mono](declarations/affectedclosure-mono.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [affectedClosure_eq_of_closed](declarations/affectedclosure-eq-of-closed.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [affectedClosure_idempotent](declarations/affectedclosure-idempotent.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [unaffected_not_seed](declarations/unaffected-not-seed.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unaffected_dependency_unaffected](declarations/unaffected-dependency-unaffected.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [affectedClosure_empty](declarations/affectedclosure-empty.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9039b1ee9bf059dccf7f01653f02f5f5cd2307ecd1815224f29f06bd65f28410 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean","GRWTSK/Order/Closure/FiniteDependencyClosure.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
