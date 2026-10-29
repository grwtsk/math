# Lawful Monad State Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42edda8f30b1560d466824191e2241f4279a7598`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulMonadStateNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [monadStateOf_get_eq_get](declarations/monadstateof-get-eq-get.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [monadStateOf_modifyGet_eq_modifyGet](declarations/monadstateof-modifyget-eq-modifyget.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [liftM_get](declarations/liftm-get.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [liftM_set](declarations/liftm-set.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [liftM_modify](declarations/liftm-modify.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [liftM_modifyGet](declarations/liftm-modifyget.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [liftM_getModify](declarations/liftm-getmodify.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [LawfulMonadStateOf](declarations/lawfulmonadstateof.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [get_seqRight](declarations/get-seqright.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [seqLeft_get](declarations/seqleft-get.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [get_map_const](declarations/get-map-const.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [get_bind_get](declarations/get-bind-get.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [get_bind_set](declarations/get-bind-set.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [get_bind_map_set](declarations/get-bind-map-set.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [set_bind_get_bind](declarations/set-bind-get-bind.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [set_bind_map_get](declarations/set-bind-map-get.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [set_bind_set_bind](declarations/set-bind-set-bind.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [set_bind_map_set](declarations/set-bind-map-set.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [modifyGetThe_eq](declarations/modifygetthe-eq.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [modify_eq](declarations/modify-eq.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [modifyThe_eq](declarations/modifythe-eq.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [getModify_eq](declarations/getmodify-eq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [modifyGet_eq'](declarations/modifyget-eq.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [modify_id](declarations/modify-id.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [getModify_id](declarations/getmodify-id.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [set_bind_modify](declarations/set-bind-modify.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [set_bind_modify_bind](declarations/set-bind-modify-bind.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [set_bind_modifyGet](declarations/set-bind-modifyget.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [set_bind_modifyGet_bind](declarations/set-bind-modifyget-bind.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [set_bind_getModify](declarations/set-bind-getmodify.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [set_bind_getModify_bind](declarations/set-bind-getmodify-bind.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [modify_bind_modify](declarations/modify-bind-modify.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [modify_bind_modifyGet](declarations/modify-bind-modifyget.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [getModify_bind_modify](declarations/getmodify-bind-modify.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [modify_comm_of_comp_comm](declarations/modify-comm-of-comp-comm.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [modify_bind_get](declarations/modify-bind-get.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abe298bd7dd0e02b0f6fa093fbcaceaa9e0570c7b6362c3eb7ba1be781f82fe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
