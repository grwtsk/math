# Exact Sofic Language Cover

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7233696059a408af98af15fec0e34c02f7afb657`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LabeledGraph](declarations/labeledgraph.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [WordPath](declarations/wordpath.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [GraphLanguage](declarations/graphlanguage.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [RunsOnGraph](declarations/runsongraph.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [fullShiftGraph](declarations/fullshiftgraph.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [every_trace_runs_on_full_shift](declarations/every-trace-runs-on-full-shift.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fullShiftGraph_path_all](declarations/fullshiftgraph-path-all.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fullShiftGraph_language_all](declarations/fullshiftgraph-language-all.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [HasFiniteBlock](declarations/hasfiniteblock.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ExactLanguagePresentation](declarations/exactlanguagepresentation.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [IsSoficFactorLanguage](declarations/issoficfactorlanguage.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsSoficTrace](declarations/issofictrace.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tailTrace](declarations/tailtrace.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [EventuallySoficTrace](declarations/eventuallysofictrace.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eventuallySofic_of_sofic](declarations/eventuallysofic-of-sofic.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sofic_of_exact_language](declarations/sofic-of-exact-language.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fullShiftGraph_not_exact_for_constant_false](declarations/fullshiftgraph-not-exact-for-constant-false.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [reachableEndStates](declarations/reachableendstates.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_reachableEndStates](declarations/mem-reachableendstates.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [wordPath_append](declarations/wordpath-append.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [wordPath_split_append](declarations/wordpath-split-append.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [graphLanguage_append_iff_endStates](declarations/graphlanguage-append-iff-endstates.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [graphLanguage_context_iff_of_same_endStates](declarations/graphlanguage-context-iff-of-same-endstates.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [UnboundedRightContexts](declarations/unboundedrightcontexts.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ExactLanguagePresentation.stateCapacity](declarations/exactlanguagepresentation-statecapacity.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rightContexts_card_le_graphLanguage](declarations/rightcontexts-card-le-graphlanguage.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rightContexts_card_le_exactPresentation](declarations/rightcontexts-card-le-exactpresentation.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [not_soficFactorLanguage_of_unboundedRightContexts](declarations/not-soficfactorlanguage-of-unboundedrightcontexts.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_soficTrace_of_unboundedRightContexts](declarations/not-sofictrace-of-unboundedrightcontexts.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_eventuallySoficTrace_of_all_tail_rightContexts](declarations/not-eventuallysofictrace-of-all-tail-rightcontexts.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a15f40d148400b01704ca600e2930a16531302e3503fa1a33d0e303145548c9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean","GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
